from pyramid.response import Response
from pyramid.view import view_config, forbidden_view_config
from pyramid.httpexceptions import HTTPFound

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
    return {}

@view_config(route_name='construction', renderer='construction.mako')
@add_title('Construction')
@include_user
def construction(request):
    return {}

@view_config(route_name='needs', renderer='needs.mako')
@add_title('List of Needs')
@include_user

  # `item_title` VARCHAR(45) NULL DEFAULT NULL ,
  # `description` VARCHAR(45) NULL DEFAULT NULL ,
  # `category_type` VARCHAR(45) NOT NULL COMMENT 'Object,Fruits and Vegetables,Milk and Alternatives, Meat and Alternatives, Grains.' ,
  # `is_perishable` TINYINT(1) NULL DEFAULT NULL ,
  # `is_refrigerated` TINYINT(1) NULL DEFAULT NULL ,

def needs(request):
    response_dict = dict()
    foodbanks = [
        {
            'name':'Foodbank1',
            'needs':[
                {
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                },{
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                },{
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                }
            ]
        },{
            'name':'Foodbank2',
            'needs':[
                {
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                },{
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                },{
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                }
            ]
        },{
            'name':'Foodbank3',
            'needs':[
                {
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                },{
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                },{
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                }
            ]
        },{
            'name':'Foodbank4',
            'needs':[
                {
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                },{
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                },{
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                }
            ]
        },{
            'name':'Foodbank5',
            'needs':[
                {
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                },{
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                },{
                    'item_title':'25 lbs vegetables root',
                    'description':'preferably potatoes, but yams are okay!',
                    'category_type':'fruit and vegetables',
                    'is_perishable':True,
                    'is_refrigerated':False
                }
            ]
        }
    ]
    response_dict['foodbanks'] = foodbanks
    return response_dict