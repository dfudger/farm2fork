
##farm2fork
=========

A git repository for team 3 in the course cis3750

----
### Virtual Environment

So I added a virtual environment to the repository and put the code in there.

I don't know if that was the right choice or we should have our own environments.

What do you think?

----
###Development
First get a clone of the repo (repository)

    $  git clone git@github.com:hockeybuggy/farm2fork.git
    $  cd farm2fork

To work on the project go into the virtual env 'env/farm2fork_otmd'

    $ cd env/farm2fork_otmd

From there you can run the tests

    $  ../bin/python setup.py test
    >  ...
    >  ----------------------------------------------------------------------
    >  Ran 2 tests in 0.006s
    >  
    >  OK

Or run a local server

    $  ../bin/pserve development.ini
    >  Starting server in PID 3479.
    >  serving on http://0.0.0.0:6543

You will find the majority of the project files in the subdirectory also called farm2fork_otmd

    $  cd farm2fork_otmd
    $  vim tests.py
