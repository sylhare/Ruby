FROM ruby:3.4-alpine
LABEL maintainer="sylhare"
LABEL org.opencontainers.image.title="Jekyll Alpine"
LABEL org.opencontainers.image.description="A Docker image for Jekyll based on Alpine Linux"
LABEL org.opencontainers.image.url="https://github.com/sylhare/Ruby"
LABEL org.opencontainers.image.source="https://github.com/sylhare/Ruby/tree/master/docker/jekyll-alpine"
LABEL org.opencontainers.image.licenses="MIT"
ENV JEKYLL_ROOTLESS=true
RUN apk add --no-cache \
    libxml2-dev \
    libxml2 \
    libxslt-dev \
    libxslt \
    libffi-dev \
    libffi \
    libtool \
    tzdata \
    autoconf  \
    build-base \
    cmake \
    gcc \
    bash \
    git

RUN gem install --no-user-install \
    jekyll \
    bundler \
    jekyll-paginate \
    jekyll-feed \
    jekyll-seo-tag \
    sass-embedded

EXPOSE 4000

WORKDIR /srv/jekyll
CMD ["/bin/sh"]
