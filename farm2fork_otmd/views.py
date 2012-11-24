from pyramid.response import Response
from pyramid.view import view_config, forbidden_view_config
from pyramid.httpexceptions import HTTPFound

from recaptcha.client import captcha

#from sqlalchemy.exc import DBAPIError

from .models import (
    DBSession,
    User,
    )

from forms import SignupForm, LoginForm

from pyramid.security import (
    remember,
    forget,
    authenticated_userid,
    )

def add_title(title):
    def add_title_decorator(func):
        def wrapper_decorator(request):
            response = func(request)
            if isinstance(response, dict):
                response['title'] = title
            return response
        return wrapper_decorator
    return add_title_decorator


def include_user(func):
    def get_user_id(request):
        response_dict = func(request)
        if isinstance(response_dict, dict):
            user_id = authenticated_userid(request)
            if user_id:
                user = DBSession.query(User).filter_by(user_id=user_id).first()
                response_dict['user'] = user
        return response_dict
    return get_user_id


@view_config(route_name='home', renderer='home.mako')
@add_title('Home')
@include_user
def home(request):
    return {}


@view_config(route_name='signup', renderer='signup.mako')
@add_title('Sign-Up')
@include_user
def signup(request):
    response_dict = dict()
    form = SignupForm(request)
    if request.POST:
        if form.is_valid():
            DBSession.add(form.create_user())
            form.dispatch_verify_email()
            return HTTPFound(request.route_url('signup_complete'))
    response_dict['form'] = form
    return response_dict


@view_config(route_name='signup_complete', renderer='signup_complete.mako')
@add_title('Sign-Up Complete')
@include_user
def signup_complete(request):
    return {}


@view_config(route_name='login', renderer='loginPage.mako')
@forbidden_view_config(renderer='loginPage.mako')
@add_title('Login')
@include_user
def login(request):
    response_dict = dict()
    form = LoginForm(request)
    if request.POST:
        if form.is_valid():
            headers = remember(request, form.get_user())
            return HTTPFound(request.route_url('home'),
                             headers=headers)
    response_dict['form'] = form
    return response_dict


@view_config(route_name='logout')
@include_user
def logout(request):
    headers = forget(request)
    return HTTPFound(location=request.route_url('home'),
                     headers=headers)


@view_config(route_name='about', renderer='about.mako')
@add_title('About')
@include_user
def about(request):
    return {}


@view_config(route_name='verify', renderer='verify.mako')
@add_title('Verify E-mail Address')
@include_user
def verify(request):
    response_dict = {'success': False}
    verification_key = request.matchdict['verification_key']
    user = DBSession.query(User).filter_by(
        verification_key=verification_key).first()
    if not user:
        response_dict['VERIFICATION_KEY_INVALID'] = True
        return response_dict

    if user.is_verified:
        response_dict['VERIFICATION_KEY_USED'] = True
        return response_dict

    user.is_verified = True
    user.is_active = True
    response_dict['success'] = True
    return response_dict


# just a view that requires permissions, used to test/show logged in
# functionality
@view_config(route_name='profile', renderer='profile.mako',
             permission='user')
@add_title('Profile')
@include_user
def profile(request):
    return {}


@view_config(route_name='foodbankprofile', renderer='foodbankprofile.mako')
@add_title('Foodbank Profile')
@include_user
def profile(request):
    return {
        'categories':[
            'Object',
            'Fruits and Vegetables',
            'Milk and Alternatives',
            'Meat and Alternatives', 
            'Grains'
        ],
        'needs':[
            {
                'quantity':100,
                'units':'lbs',
                'item_title':'carrots',
                'category':'Fruits and Vegetables',
                'description':'OMG CARROTS FUUUUUUUUUUUU',
                'is_perishable':1,
                'is_refrigerated':1
            },{
                'quantity':100,
                'units':'lbs',
                'item_title':'carrots',
                'category':'Fruits and Vegetables',
                'description':'OMG CARROTS FUUUUUUUUUUUU',
                'is_perishable':1,
                'is_refrigerated':1
            },{
                'quantity':100,
                'units':'lbs',
                'item_title':'carrots',
                'category':'Fruits and Vegetables',
                'description':'OMG CARROTS FUUUUUUUUUUUU',
                'is_perishable':1,
                'is_refrigerated':1
            },{
                'quantity':100,
                'units':'lbs',
                'item_title':'carrots',
                'category':'Fruits and Vegetables',
                'description':'OMG CARROTS FUUUUUUUUUUUU',
                'is_perishable':1,
                'is_refrigerated':1
            }
        ]}

@view_config(route_name='construction', renderer='construction.mako')
@add_title('Construction')
@include_user
def construction(request):
    return {}

@view_config(route_name='password_recovery', renderer='password_recovery.mako')
@add_title('Password Recovery')
def password_recovery(request):
    captcha_public_key  = "6LcPddkSAAAAAHS1m8sXBr9uqoO2_4GCAyuYr2Fx"
    captcha_private_key = "6LcPddkSAAAAAAv3FYqBs7s2zAMvVF5mAM41o16h"
    if request.method == 'POST':
        response = captcha.submit(
        request.args['recaptcha_challenge_field'],
        request.args['recaptcha_response_field'],
        captcha_private_key,
        request.remote_addr,
        ) 
        if response.is_valid():
            pass
        else:
            pass
    else:
        #data['recaptcha_javascript'] = captcha.displayhtml(captcha_public_key)
        #data['recaptcha_theme'] = self.theme
        #return { "recaptcha_body": data}
        return { "recaptcha_body": captcha.displayhtml(captcha_public_key) }
    return {}

@view_config(route_name='needs', renderer='needs.mako')
@add_title('List of Needs')
@include_user
def needs(request):
    form = None
   # form = NeedsListSearchForm(request)
   # pantries = DBSession.query(Pantry).all()
    pantry_dict = {}
    food_bank_names = {}
   # for pantry in pantries:
   #     pantry_dict[pantry.name] = pantry
   #     food_bank_names[str(pantry.pantry_id)] = pantry.name

   # if not form.is_valid():
   # raise HTTPBadRequest()

   # query_set = form.search()
   # result_set = form.process_result(query_set, food_bank_names)

    results = [
        (
            {
                'Foodbank 1':{
                    'pantry_id':1,
                    'name':'Foodbank 1'
                }
            },[
                {
                    'quantity':3,
                    'item':{
                        'item_title':'blue',
                        'description':'hey this',
                    }
                },{
                    'quantity':3,
                    'item':{
                        'item_title':'blue',
                        'description':'hey this',
                    }
                },{
                    'quantity':3,
                    'item':{
                        'item_title':'blue',
                        'description':'hey this',
                    }
                }
            ]
        ),
    ]
   # for name, requests in result_set.items():
   #     pantry = pantry_dict[name]
   #     results.append((pantry, requests))

    return {
        'food_banks': results,
        'food_bank_names': food_bank_names,
        'form': form
    }

@view_config(route_name='modifyneeds', renderer='modifyneeds.mako')
@add_title('Modify Needs')
@include_user
def modifyneeds(request):

    return {
        'categories':[
            'Fruits and Vegetables',
            'Milk and Alternatives',
            'Meat and Alternatives', 
            'Grains'
        ],
        'needs':[
            {
                'quantity':100,
                'units':'lbs',
                'item_title':'carrots',
                'category':'Fruits and Vegetables',
                'description':'OMG CARROTS FUUUUUUUUUUUU',
                'is_perishable':1,
                'is_refrigerated':1
            },{
                'quantity':100,
                'units':'lbs',
                'item_title':'carrots',
                'category':'Fruits and Vegetables',
                'description':'OMG CARROTS FUUUUUUUUUUUU',
                'is_perishable':1,
                'is_refrigerated':1
            },{
                'quantity':100,
                'units':'lbs',
                'item_title':'carrots',
                'category':'Fruits and Vegetables',
                'description':'OMG CARROTS FUUUUUUUUUUUU',
                'is_perishable':1,
                'is_refrigerated':1
            },{
                'quantity':100,
                'units':'lbs',
                'item_title':'carrots',
                'category':'Fruits and Vegetables',
                'description':'OMG CARROTS FUUUUUUUUUUUU',
                'is_perishable':1,
                'is_refrigerated':1
            }
        ]
    }