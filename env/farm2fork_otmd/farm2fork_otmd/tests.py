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

    def test_get_other_page(self):
        from .views import get_other_page
        request = testing.DummyRequest()
        info = get_other_page(request)
        self.assertEqual(info["title"], "Other")
