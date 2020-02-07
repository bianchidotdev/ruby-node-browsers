FROM circleci/ruby:2.6.5-node-browsers

RUN sudo apt-get update \
  && sudo apt-get upgrade -y \
  && sudo apt-get install -y phantomjs

ENV RAILS_ENV=true
RUN echo $RAILS_ENV
ENV NODE_ENV=$RAILS_ENV

ENV GROVER_NO_SANDBOX=true
ENV CI=true

