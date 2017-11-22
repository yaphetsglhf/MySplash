FROM scrapinghub/splash:3.0
MAINTAINER yaphetsglhf <yaphetsglhf@gmail.com>

ADD install.sh /home/install.sh
ADD fonts.conf /home/fonts.conf

WORKDIR /home

RUN apt-get install -y unzip
RUN chmod +x install.sh && ./install.sh

EXPOSE 8050 5023

ENTRYPOINT [ \
    "python3", \
    "/app/bin/splash", \
    "--proxy-profiles-path", "/etc/splash/proxy-profiles", \
    "--js-profiles-path", "/etc/splash/js-profiles", \
    "--filters-path", "/etc/splash/filters", \
    "--lua-package-path", "/etc/splash/lua_modules/?.lua" \
]
