# -*- coding: utf-8 -*-

import os, sys, site

import time
import traceback
import signal

activate_this = '/home/a/anttoonru/myvenv/bin/activate_this.py'
#exec(compile(activate_this, dict(__file__=activate_this)))
site.addsitedir('/home/a/anttoonru/myvenv/lib/python3.4/site-packages')
sys.path.insert(1,'/home/a/anttoonru/RCC/raduga/')

import django

if django.VERSION[1] <= 6:
    os.environ['DJANGO_SETTINGS_MODULE'] = 'raduga.settings'
    import django.core.handlers.wsgi
    application = django.core.handlers.wsgi.WSGIHandler()
else:
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "raduga.settings")
    from django.core.wsgi import get_wsgi_application
    try:
        application = get_wsgi_application()
    except RuntimeError:
        traceback.print_exc()
        os.kill(os.getpid(), signal.SIGINT)
        time.sleep(2.5)


