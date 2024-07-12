FROM ruby:3.3.3-slim

# Install prince XML with msttcorefonts
RUN sed -i -e 's/main/main non-free contrib/g' /etc/apt/sources.list.d/debian.sources \
    && apt-get update \
    && apt-get install -y wget gdebi msttcorefonts \
      libfontconfig libcurl4-openssl-dev liblcms2-dev libavif-dev \
      libpng-dev libgif-dev libtiff-dev libxml2 \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && wget https://www.princexml.com/download/prince_20240704-1_debian12_amd64.deb \
    && yes | gdebi ./prince_20240704-1_debian12_amd64.deb \
    && rm ./prince_20240704-1_debian12_amd64.deb

CMD [ "/bin/bash", "-c", "bash" ]
