FROM ruby:2.6-alpine
LABEL maintainer="sylhare"

WORKDIR /jekyll

RUN apk add --no-cache build-base cmake libxml2-dev libxslt-dev libffi-dev autoconf libtool
RUN apk add --no-cache gcc bash git libxml2 libxslt libffi
RUN gem install sassc
RUN gem install jekyll
RUN gem install bundler

EXPOSE 4000

CMD ["jekyll", "--help"]