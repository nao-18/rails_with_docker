FROM ruby:3.1

# OSのパッケージを更新して、必要なものをインストール
RUN apt-get update -qq && apt-get install -y nodejs

# アプリケーションのディレクトリを作成
WORKDIR /app

# GemfileとGemfile.lockをコピーしてbundle install
COPY ./app/Gemfile ./
RUN gem install bundler && bundle install

# アプリケーションのコードをコピー
COPY ./app /app
