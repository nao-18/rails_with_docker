FROM ruby:3.1

RUN apt-get update -qq && apt-get install -y nodejs python3
RUN gem install rails

WORKDIR /app

COPY Gemfile ./
RUN bundle install

COPY ./app /app
