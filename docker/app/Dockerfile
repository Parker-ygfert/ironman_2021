FROM ruby:3.0.1

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 0

RUN apt-get update && apt-get install -y nodejs mariadb-client cron --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV APP_PATH /usr/src/app
RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH

COPY Gemfile* $APP_PATH/
RUN gem update --system
RUN bundle install
COPY . $APP_PATH/

EXPOSE 3000
