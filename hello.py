#!/usr/bin/env python
# -*- coding: utf-8 -*-

import requests
import time
import os

BASE_URL = 'http://localhost:8051/'
RENDER_TYPE = 'render.png?'
RENDER_ALL = '1'
QUALITY = '95'
TIMEOUT = '60'
WAIT = '1'

url = 'https://getemoji.com/'

request_url = BASE_URL + '%surl=%s&render_all=%s&quality=%s&timeout=%s&wait=%s' % (RENDER_TYPE, url, RENDER_ALL, QUALITY, TIMEOUT, WAIT)
print(request_url)

res = requests.get(request_url)
img = '111111111111.png'

with open(img, 'wb') as f:
    f.write(res.content)

# print(request_url)
# t1 = time.time()
# img = 'emoji.jpeg'
# cmd = "curl '%s' >> %s" % (request_url, img)
#
# os.system(cmd)

# t2 = time.time()
# print(t2 - t1)
