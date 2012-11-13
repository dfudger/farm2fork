from pyramid.config import Configurator

def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    config = Configurator(settings=settings)
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_route('home', '/')
    config.add_route('about', '/about')
    config.add_route('profile', '/profile/{username}')
    config.add_route('foodbankprofile', '/foodbankprofile')
    config.add_route('signup', '/signup')
    config.add_route('login', '/login')
    config.add_route('construction', '/construction')
    config.scan()
    return config.make_wsgi_app()
