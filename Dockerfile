FROM ruby:3.2.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /x_api
WORKDIR /x_api
ADD Gemfile /x_api/Gemfile
ADD Gemfile.lock /x_api/Gemfile.lock
RUN bundle install
ADD . /x_api/