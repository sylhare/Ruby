FROM ruby:3.1-alpine
LABEL maintainer="sylhare"
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


RUN gem update --system
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
