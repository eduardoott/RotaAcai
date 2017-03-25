FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rota-acai
WORKDIR /rota-acai
ADD Gemfile /rota-acai/Gemfile
ADD Gemfile.lock /rota-acai/Gemfile.lock
RUN bundle install
