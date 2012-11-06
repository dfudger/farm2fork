from pyramid.view import view_config

@view_config(route_name="home", renderer="home.mako")
def get_home_page(request):
    return {"title":"Home"}

@view_config(route_name="profile", renderer="profile.mako")
def get_profile_page(request):
    usernameStr = request.matchdict.get("username")
    return {"title":"Profile", "username":usernameStr}
