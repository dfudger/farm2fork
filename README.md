##farm2fork
=========

A git repository for team 3 in the course cis3750

----

###Development
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
    $  cd farm2fork

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

That should be about it. You will find the majority of the project files that we will be working on is
in the subdirectory also called farm2fork_otmd.

General


