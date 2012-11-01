# farm2fork
=========

A git repository for team 3 in the course cis3750

This is Dani's branch.

----

## Development
Follow this quick guide to get the project setup on your computer so you can start development.

I don't know If this will work for macs but if not let me know if it does not and we can tweak it. 

#### Set up a virtual environment

You will want to have a virtual environment so that you don't screw up your
computer's python installation

    $  sudo easy_install virtualenv
    $  virtualenv --no-site-packages f2fenv

#### Install pyramid in the environment

    $  cd f2fenv
    $  bin/easy_install pyramid

#### Clone the repo (repository) into your virtual env 

from within your virtual environment.

    $  git clone git@github.com:hockeybuggy/farm2fork.git

#### Install up the pyramid project for development

    $  cd farm2fork
    $  ../bin/setup.py develop

#### Run the projects tests to make sure it's all ok

from within the farm2form repo.

    $  cd farm2fork_otmd
    $  ../bin/python setup.py test
    >  ...
    >  ----------------------------------------------------------------------
    >  Ran 2 tests in 0.006s
    >  
    >  OK

#### Run the server locally

    $  ../bin/pserve development.ini
    >  Starting server in PID 3479.
    >  serving on http://0.0.0.0:6543

That should be about it. You will find the majority of the project files that
we will be working on is in the subdirectory also called farm2fork_otmd.

When I am working on this I have one terminal that I use for running the server
and one that I use for running tests and the like. But do whatever works for
you.

## Resources

Here are some places where some very useful information can be found:

http://docs.pylonsproject.org/projects/pyramid/en/1.4-branch/narr/install.html#installing-the-virtualenv-package

http://docs.makotemplates.org/en/latest/syntax.html
