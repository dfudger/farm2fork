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

    def test_get_profile_page(self):
        from .views import get_profile_page
        request = testing.DummyRequest()
        info = get_profile_page(request)
        self.assertEqual(info["title"], "Profile")
