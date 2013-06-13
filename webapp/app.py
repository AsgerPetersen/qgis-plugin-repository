# -*- coding: utf-8 -*-
'''
Created on 18/04/2013

@author: Asger
'''
from bottle import run, route, static_file
from bottle import default_app

# -----------------------------------------------
# html ui
# -----------------------------------------------
@route('/')
def html_index(): 
    return static_file( 'index.html', 'html/')

@route('/static/<path:path>')
def callback(path):
    return static_file(path, 'static/')

# -----------------------------------------------
# qgis repo
# -----------------------------------------------
@route('/plugins')
def plugin_index():
    return static_file('index.xml', 'repo/')

@route('/plugins/<name>/<version>/download')
def get_plugin(name, version):
    return static_file( '%s-%s.zip' % (name, version), root='repo/', download=True) # download=True returns file with name as on disk



if __name__ == '__main__':
    run(host='localhost', port=88, debug=True, reloader=False)