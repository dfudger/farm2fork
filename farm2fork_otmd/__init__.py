from pyramid.config import Configurator
#from sqlalchemy import engine_from_config
from pyramid.authentication import AuthTktAuthenticationPolicy
from pyramid.authorization import ACLAuthorizationPolicy

from security import groupfinder

from .models import (
    DBSession,
    Base)


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    #engine = engine_from_config(settings, 'sqlalchemy.')
    #DBSession.configure(bind=engine)
    authn_policy = AuthTktAuthenticationPolicy(
        'sosecret', callback=groupfinder) #sosecret should be replaced with a better key
    authz_policy = ACLAuthorizationPolicy()
    #Base.metadata.bind = engine
    config = Configurator(settings=settings,
                          root_factory='.models.RootFactory')
    config.set_authentication_policy(authn_policy)
    config.set_authorization_policy(authz_policy)
    config.include('pyramid_celery')
    config.include('pyramid_mailer')
    #Routes
    config.add_route('login', '/login')
    config.add_route('logout', '/logout')
    config.add_route('profile', '/profile')
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_route('about', '/about')
    config.add_route('home', '/')
    config.add_route('foodbankprofile', '/provider/{id}')
    config.add_route('signup', '/signup')
    config.add_route('signup_complete', '/signup/submission')
    config.add_route('verify', '/verify/{verification_key}')
    config.add_route('construction', '/construction')
    config.add_route('needs', '/needs')
    config.add_route('modifyneeds', '/modifyneeds')
    config.add_route('password_recovery', '/password_recovery')
    config.scan()
    return config.make_wsgi_app()
