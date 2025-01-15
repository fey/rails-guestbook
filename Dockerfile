FROM ruby:3.2.2

RUN apt-get update \
  && apt-get install -y build-essential libpq-dev libsqlite3-dev curl

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs
RUN npm install --global yarn

ENV DISABLE_SPRING=1
ENV RAILS_SERVE_STATIC_FILES=enabled
ENV RAILS_LOG_TO_STDOUT=enabled

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

COPY package.json .
COPY yarn.lock .
RUN yarn install

COPY . .

RUN bin/rails assets:precompile

CMD ["bash", "-c", "make db-prepare && make start"]
