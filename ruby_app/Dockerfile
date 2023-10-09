FROM ruby:3.1

RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /app

COPY Gemfile ./
RUN bundle install --binstubs

COPY . ./

CMD ["./bin/bundle", "exec", "puma", "-C", "puma.rb"]
