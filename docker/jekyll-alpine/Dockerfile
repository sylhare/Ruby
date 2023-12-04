FROM ruby:3.1-alpine
LABEL maintainer="sylhare"

RUN apk add --no-cache build-base cmake libxml2-dev libxslt-dev libffi-dev autoconf libtool
RUN apk add --no-cache gcc bash git libxml2 libxslt libffi
RUN gem install --no-user-install jekyll bundler
RUN gem install --no-user-install jekyll-paginate jekyll-feed jekyll-seo-tag
RUN gem update --system

EXPOSE 4000

CMD ["/bin/sh"]
