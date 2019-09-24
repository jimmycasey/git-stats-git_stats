FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y curl ruby-full ruby-dev gcc zlib1g-dev \
    make ruby-nokogiri git npm --no-install-recommends && gem install git_stats
RUN npm config set strict-ssl false && npm cache clean -f && npm install -g n
RUN n 6.10.2 && npm install
