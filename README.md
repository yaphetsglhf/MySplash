# My Splash Project:

## Description
```
  - Splash is a javascript rendering service with an HTTP API. It's a lightweight browser with an HTTP API, implemented in Python 3 using Twisted and QT5.
  - Ubuntu 16.04 in docker
  - render pics with headless browser
  - not support color emojis in Ubuntu, instead fork: https://github.com/ebidel/try-puppeteer
```
## Doc-link
```
  - https://splash.readthedocs.io/en/stable/install.html
  - https://github.com/scrapinghub/splash
  - https://github.com/GoogleChrome/puppeteer
```  

## Usage
```
  - docker build -t mysplash .
  - docker run -d -p 8050:8050 -p 5023:5023  mysplash
  - docker exec -it xxxx bash

  - curl or python hello.py
```
