FROM ruby:3.3.3-slim

# Install system packages
RUN echo "deb http://deb.debian.org/debian bookworm contrib non-free" > /etc/apt/sources.list.d/contrib.list \
    && apt update -qq \
    && apt install --no-install-recommends -y libaom3 libavif-dev libcurl4 libgif7 libjpeg62-turbo \
    liblcms2-2 libtiff6 libwebp7 libwebpdemux2 libxml2 wget vim fontconfig ttf-mscorefonts-installer \
    && wget https://www.princexml.com/download/prince_20241206-1_debian12_amd64.deb \
    && dpkg -i prince_20241206-1_debian12_amd64.deb \
    && fc-cache -f \
    && rm prince_20241206-1_debian12_amd64.deb

    CMD [ "/bin/bash", "-c", "bash" ]
