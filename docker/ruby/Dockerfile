FROM ruby:3.4
LABEL maintainer="sylhare"
LABEL org.opencontainers.image.title="Jekyll"
LABEL org.opencontainers.image.description="A Docker image for Jekyll based on Linux"
LABEL org.opencontainers.image.url="https://github.com/sylhare/Ruby"
LABEL org.opencontainers.image.source="https://github.com/sylhare/Ruby/tree/master/docker/jekyll-alpine"
LABEL org.opencontainers.image.licenses="MIT"
ENV JEKYLL_ROOTLESS=true

RUN mkdir -p /usr/local/bundle && \
    chmod 777 /usr/local/bundle && \
    gem install --no-user-install \
    jekyll \
    bundle \
    rake \
    jekyll-paginate \
    jekyll-feed \
    jekyll-seo-tag \
    jekyll-sass-converter

WORKDIR /srv/jekyll
EXPOSE 4000

CMD ["/bin/sh"]