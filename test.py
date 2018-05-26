#!/usr/bin/env python
# -*- coding: utf-8 -*-

import requests

BASE_URL = 'http://localhost:8050/'
RENDER_TYPE = 'render.png?'

# render full page
RENDER_ALL = '1'

# should better never greater than 95
QUALITY = '95'
TIMEOUT = '60'

# render full page
WAIT = '1'

url = 'https://getemoji.com/'

request_url = BASE_URL + '%surl=%s&render_all=%s&quality=%s&timeout=%s&wait=%s' % (RENDER_TYPE, url, RENDER_ALL, QUALITY, TIMEOUT, WAIT)
print(request_url)

res = requests.get(request_url)
img = 'demo.png'

with open(img, 'wb') as f:
    f.write(res.content)
