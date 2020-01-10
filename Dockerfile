FROM circleci/ruby:2.6-node-browsers

USER root

WORKDIR /var/app

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y phantomjs

ENV RAILS_ENV=true
RUN echo $RAILS_ENV
ENV NODE_ENV=$RAILS_ENV

ENV GROVER_NO_SANDBOX=true
ENV CI=true

