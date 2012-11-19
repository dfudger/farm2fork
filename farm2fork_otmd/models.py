from sqlalchemy import *
from sqlalchemy.ext.declarative import declarative_base
from zope.sqlalchemy import ZopeTransactionExtension

from sqlalchemy.orm import (
    scoped_session,
    sessionmaker)

from pyramid.security import (
    Allow,
    Everyone,
    )

class RootFactory(object):
    __acl__ = [(Allow, Everyone, 'view'),
               (Allow, 'group:users', 'user')]
    def __init__(self, request):
        pass

DBSession = scoped_session(sessionmaker(extension=ZopeTransactionExtension()))
Base = declarative_base()


class Transaction(Base):
    """
        This table is for storing information about the status of a
    """

    __tablename__ = 'Transaction'

    transaction_id = Column(INT(11), primary_key=True, nullable=False)
    date_posted = Column(DATETIME, nullable=False)
    proposed_delivery = Column(DATETIME, nullable=False)
    date_recieved = Column(DATETIME)
    quantity = Column(INT(11))
    """
        The nunber of units of the item of the transaction.
    """

    units = Column(VARCHAR(45), nullable=False)
    """
        The units related to the quantity involved in the transaction.
    """

    rating = Column(INT(11))
    """
        Pantry rates the quality of the item donated after it has
        been recieved.
    """

    Item_id = Column(INT(11), ForeignKey('Item.id'), primary_key=True,
                     nullable=False)
    User_id = Column(INT(11), ForeignKey('User.user_id'), primary_key=True,
                     nullable=False)
    Pantry_id = Column(INT(11), ForeignKey('Pantry.pantry_id'),
                       primary_key=True, nullable=False)


class Worker(Base):
    """
        Vetted volunteers are added to the worker table. Select from
    """

    __tablename__ = 'Worker'

    is_volunteer = Column(INT(1))
    """
        Able to pick up donations for the food bank.
    """

    is_employee = Column(INT(1))
    """
        Grants the permissions to post wants on behalf of the food bank.
    """

    User_id = Column(INT(11), primary_key=True, nullable=False)
    Pantry_id = Column(INT(11), ForeignKey('Pantry.pantry_id'),
                       primary_key=True, nullable=False)
    is_admin = Column(INT(1), nullable=False)
    """
        Have the permissions to edit all the data for the pantry.
    """


class Request(Base):
    """
        This table is for storing the information about a pantry's p
    """

    __tablename__ = 'Request'

    quantity = Column(INT(11))
    date = Column(DATETIME, nullable=False)
    Pantry_id = Column(INT(11), ForeignKey('Pantry.pantry_id'),
                       primary_key=True, nullable=False)
    Item_id = Column(INT(11), ForeignKey('Item.id'), primary_key=True,
                     nullable=False)
    User_id = Column(INT(11), ForeignKey('User.user_id'), primary_key=True,
                     nullable=False)


class Pantry(Base):
    """
        This user is for storing the information about a food bank/p
    """

    __tablename__ = 'Pantry'

    pantry_id = Column(INT(11), primary_key=True, nullable=False)
    contact = Column(VARCHAR(45))
    name = Column(VARCHAR(45), nullable=False)
    Hours_id = Column(INT(11), ForeignKey('Hours.hours_id'), primary_key=True,
                      nullable=False)
    address = Column(VARCHAR(512))
    city = Column(VARCHAR(45))
    postal_code = Column(VARCHAR(45))
    province_state = Column(VARCHAR(2))


class Hours(Base):
    """
        This table is for storing the operating hours for a pantry.
    """

    __tablename__ = 'Hours'

    hours_id = Column(INT(11), primary_key=True, nullable=False)
    monday = Column(VARCHAR(45))
    tuesday = Column(VARCHAR(45))
    wednesday = Column(VARCHAR(45))
    thursday = Column(VARCHAR(45))
    friday = Column(VARCHAR(45))
    saturday = Column(VARCHAR(45))
    sunday = Column(VARCHAR(45))


class Item(Base):
    """
        This table is for storing the information about a particular
    """

    __tablename__ = 'Item'

    id = Column(INT(11), primary_key=True, nullable=False)
    item_title = Column(VARCHAR(45))
    description = Column(VARCHAR(45))
    category_type = Column(VARCHAR(45), nullable=False)
    """
        Object,Fruits and Vegetables,Milk and Alternatives, Meat and
        Alternatives, Grains.
    """

    is_perishable = Column(INT(1))
    is_refrigerated = Column(INT(1))


class Socialnetwork(Base):
    """
        This table is for users to log in with social media etc. not
    """

    __tablename__ = 'SocialNetwork'

    socialNetwork_id = Column(INT(11), primary_key=True, nullable=False)
    User_id = Column(INT(11), ForeignKey('User.user_id'), primary_key=True,
                     nullable=False)
    SocialNetworkName = Column(VARCHAR(45), nullable=False)
    OAUTH_id = Column(VARCHAR(45), nullable=False)


class User(Base):
    """
        This table is for storing the personal information of a gene
    """

    __tablename__ = 'User'

    user_id = Column(INT(11), primary_key=True, nullable=False)
    email = Column(VARCHAR(45), nullable=False)
    password = Column(VARCHAR(256), nullable=False)
    """
        password for user\n
    """

    verification_key = Column(VARCHAR(45), nullable=False)
    """
        hashed email or temporary url for email verify?
    """

    is_verified = Column(INT(1))
    """
        email is verified, not volunteer is vetted
    """

    is_farmer = Column(INT(1))
    is_active = Column(INT(1))
    newsletter_subscription = Column(INT(1))
    is_newsletter = Column(INT(1))
    first_name = Column(VARCHAR(45))
    last_name = Column(VARCHAR(45))
    phone_number = Column(INT(11))
    date_created = Column(DATETIME)
    address = Column(VARCHAR(512))
    city = Column(VARCHAR(45))
    postal_code = Column(VARCHAR(45))
    province_state = Column(VARCHAR(2))
    password_recovery_timestamp = Column(TIMESTAMP)
    """
        This value will be set when the user requests a password reset.
        The system will then check the current time against this timestamp
        and decide to send email accordingly
    """


class Volunteerrequest(Base):
    """

    """

    __tablename__ = 'VolunteerRequest'

    is_declined = Column(INT(1), nullable=False)
    Pantry_id = Column(INT(11), ForeignKey('Pantry.pantry_id'),
                       primary_key=True, nullable=False)
    User_id = Column(INT(11), ForeignKey('User.user_id'), primary_key=True,
                     nullable=False)

