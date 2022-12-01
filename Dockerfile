FROM ruby:2.7-slim-buster

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 0

WORKDIR /usr/src/app

COPY Gemfile* ./
RUN bundle install

COPY . .

CMD ["ruby", "./app.rb"]