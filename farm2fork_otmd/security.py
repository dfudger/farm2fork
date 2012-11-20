from models import DBSession, User

# this style of group  permissions will not work in the long run when
# users are only allowed to edit their own profile pages...
def groupfinder(userid, request):
    user = DBSession.query(User).filter_by(user_id=userid).first()
    if user:
        return ['group:users']
