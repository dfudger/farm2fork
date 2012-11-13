from pyramid.view import view_config

@view_config(route_name="home", renderer="home.mako")
def get_home_page(request):
    return {"title":"Home"}

@view_config(route_name="about", renderer="about.mako")
def get_about_page(request):
    return {"title":"About"}

@view_config(route_name="profile", renderer="profile.mako")
def get_profile_page(request):
    usernameStr = request.matchdict.get("username")
    return {"title":"Profile", "username":usernameStr}

@view_config(route_name="construction", renderer="construction.mako")
def get_construction_page(request):
    return {"title":"Construction"}

@view_config(route_name="signup", renderer="signup.mako")
def get_signup_page(request):
    password_validity = True;
    return {"title":"Signup", "EMAIL_INVALID": False, "EMAIL_ALREADY_EXISTS": False, \
        "EMAIL_MISMATCH": False, "PASSWORD_INVALID": False, "PASSWORD_MISMATCH": False,}

@view_config(route_name="login", renderer="loginPage.mako")
def get_login_page(request):
    # TODO this should be a part of form
    # NOTE maybe password invalid should be incorrect
    return {"title":"Login", "EMAIL_INVALID": False, "PASSWORD_INVALID": True}
