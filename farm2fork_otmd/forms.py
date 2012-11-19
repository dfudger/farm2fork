import hashlib
import inspect
import re
import time

from datetime import datetime

from models import DBSession, User
#from tasks import EmailVerificationTask


class FormValidationError(Exception):
    pass


class Form(object):
    def __init__(self, request):
        self.error = False
        for field in request.POST:
            setattr(self, field, request.POST[field])

    def set_error(self, fn):
        try:
            fn()
        except FormValidationError, e:
            self.error = True
            setattr(self, e.message, True)
        return self.error

    def check_required(self):
        for field in self.REQUIRED_FIELDS:
            if not getattr(self, field):
                raise FormValidationError('{0}_REQUIRED'.format(field.upper()))

    def validate(self):
        ret_val = not self.set_error(self.check_required)
        methods = dict(inspect.getmembers(self, predicate=inspect.ismethod))
        fields = self.REQUIRED_FIELDS + self.OPTIONAL_FIELDS
        for field in fields:
            if 'validate_' + field in methods:
                if self.set_error(methods['validate_' + field]):
                    ret_val = False

        if self.set_error(self.clean):
            ret_val = False

        return ret_val

    def is_valid(self):
        return self.validate()

    def clean(self):
        pass

    def get(self, attr):
        if hasattr(self, attr):
            return getattr(self, attr)
        return ''


class SignupForm(Form):
    REQUIRED_FIELDS = ('first_name', 'last_name', 'email', 'con_email',
                       'password', 'con_password')
    OPTIONAL_FIELDS = ('farmer_box', 'newsletter_box')

    def validate_email(self):
        if not re.match('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
                        self.email):
            raise FormValidationError('EMAIL_INVALID')

        user = DBSession.query(User).filter_by(email=self.email).first()
        if user:
            raise FormValidationError('EMAIL_ALREADY_EXISTS')

    def validate_password(self):
        PW_LENGTH = 8
        if not re.match(
                '((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{' + str(PW_LENGTH) + ',20})',
                self.password):
            raise FormValidationError('PASSWORD_INVALID')

    def clean(self):
        if self.email != self.con_email:
            raise FormValidationError('EMAIL_MISMATCH')

        if self.password != self.con_password:
            raise FormValidationError('PASSWORD_MISMATCH')

    def create_user(self):
        verification_key = hashlib.md5(
            self.email + str(time.time())).hexdigest()

        farmer = False
        if getattr(self, 'farmer_box', None):
            farmer = True

        newsletter = False
        if getattr(self, 'newsletter', None):
            newletter = True

        self.user = User(email=self.email,
                         password=hashlib.sha512(self.password).hexdigest(),
                         verification_key=verification_key,
                         is_verified=False, is_farmer=farmer, is_active=False,
                         newsletter_subscription=newsletter,
                         date_created=datetime.now(),
                         first_name=self.first_name,
                         last_name=self.last_name)
        return self.user

    def dispatch_verify_email(self):
        if not getattr(self, 'user', None):
            return

        EmailVerificationTask().delay(self.user)


class LoginForm(Form):
    REQUIRED_FIELDS = ('email', 'password')
    OPTIONAL_FIELDS = ()

    def validate_email(self):
        if not re.match('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
                        self.email):
            raise FormValidationError('EMAIL_INVALID')

        user = DBSession.query(User).filter_by(email=self.email).first()
        if not user:
            raise FormValidationError('EMAIL_INVALID')

    def validate_password(self):
        password = hashlib.sha512(self.password).hexdigest()

        user = DBSession.query(User).filter_by(email=self.email).first()
        if user:
            if password != user.password:
                raise FormValidationError('PASSWORD_INVALID')

    def clean(self):
        user = DBSession.query(User).filter_by(email=self.email).first()
        if user:
            if not user.is_active:
                raise FormValidationError('NOT_ACTIVE')
            if not user.is_verified:
                raise FormValidationError('NOT_VERIFIED')

    def get_user(self):
        user = DBSession.query(User).filter_by(email=self.email).first()
        return user.user_id
