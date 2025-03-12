FROM ubuntu:latest
LABEL maintainer="sylhare"
LABEL org.opencontainers.image.title="Jekyll Ubuntu"
LABEL org.opencontainers.image.description="A Docker image for Jekyll based on Ubuntu"
LABEL org.opencontainers.image.url="https://github.com/sylhare/Ruby"
LABEL org.opencontainers.image.source="https://github.com/sylhare/Ruby/tree/master/docker/jekyll-ubuntu"
LABEL org.opencontainers.image.licenses="MIT"

RUN apt-get update
RUN apt-get install -y git curl autoconf bison build-essential
RUN apt-get install -y libssl-dev libreadline-dev zlib1g-dev libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
RUN apt-get install -y ruby-full

RUN gem install --no-user-install jekyll bundler rake html-proofer
RUN gem install --no-user-install jekyll-paginate jekyll-feed jekyll-seo-tag jekyll-sass-converter

RUN apt-get install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /srv/jekyll
EXPOSE 4000

CMD ["/bin/sh"]
