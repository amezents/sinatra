FROM ruby:2.7-buster
LABEL maintainer=​"amezents@gmail.com"​


# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 0

WORKDIR /usr/src/app

COPY Gemfile* ./
RUN bundle install

COPY . .

CMD ["bundle", "exec", "puma", "--bind", "tcp://0.0.0.0", "--port","80", "./config/puma.ru" ]