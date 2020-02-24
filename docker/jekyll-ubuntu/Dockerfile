FROM ubuntu:latest
LABEL maintainer="sylhare"

RUN apt-get update
RUN apt-get install -y git curl autoconf bison build-essential
RUN apt-get install -y libssl-dev libreadline-dev zlib1g-dev libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
RUN apt-get install -y ruby-full

RUN gem install --no-user-install jekyll
RUN gem install --no-user-install bundler
RUN gem update --system

CMD ["/bin/bash"]
