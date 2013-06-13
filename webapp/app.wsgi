# -*- coding: utf-8 -*-
'''
Created on 18/04/2013

@author: Asger
'''
import os

# Change working directory so relative paths (and template lookup) work again
os.chdir(os.path.dirname(__file__))

import bottle
import app
# ... build or import your bottle application here ...
# Do NOT use bottle.run() with mod_wsgi
application = bottle.default_app()