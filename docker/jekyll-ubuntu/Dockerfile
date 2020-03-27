FROM ubuntu:latest
LABEL maintainer="sylhare"

RUN apt-get update
RUN apt-get install -y git curl autoconf bison build-essential
RUN apt-get install -y libssl-dev libreadline-dev zlib1g-dev libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
RUN apt-get install -y ruby-full

RUN apt-get install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN gem install --no-user-install jekyll bundler html-proofer
RUN gem install --no-user-install jekyll-paginate jekyll-feed jekyll-seo-tag
RUN gem update --system

CMD ["/bin/bash"]
