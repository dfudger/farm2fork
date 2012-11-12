import unittest

from pyramid import testing

class ViewTests(unittest.TestCase):
    def setUp(self):
        self.config = testing.setUp()

    def tearDown(self):
        testing.tearDown()

    def test_get_home_page(self):
        from .views import get_home_page
        request = testing.DummyRequest()
        info = get_home_page(request)
        self.assertEqual(info["title"], "Home")

    def test_get_about_page(self):
        from .views import get_about_page
        request = testing.DummyRequest()
        info = get_about_page(request)
        self.assertEqual(info["title"], "About")

    def test_get_profile_page(self):
        from .views import get_profile_page
        request = testing.DummyRequest()
        info = get_profile_page(request)
        self.assertEqual(info["title"], "Profile")

    def test_get_construction_page(self):
        from .views import get_construction_page
        request = testing.DummyRequest()
        info = get_construction_page(request)
        self.assertEqual(info["title"], "Construction")

    def test_get_signup_page(self):
        from .views import get_signup_page
        request = testing.DummyRequest()
        info = get_signup_page(request)
        self.assertEqual(info["title"], "Signup")
        self.assertTrue(info["valid_password"])

    def test_get_login_page(self):
        from .views import get_login_page
        request = testing.DummyRequest()
        info = get_login_page(request)
        self.assertEqual(info["title"], "Login")

