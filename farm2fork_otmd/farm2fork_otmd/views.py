from pyramid.view import view_config

@view_config(route_name="home", renderer="home.mako")
def get_home_page(request):
    return {"title":"Home"}

@view_config(route_name="other", renderer="other.mako")
def get_other_page(request):
    return {"title":"Other"}
