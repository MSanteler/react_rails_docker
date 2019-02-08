FROM ruby:2.5.1-alpine

RUN apk upgrade --no-cache \
      &&  apk add --no-cache build-base \
      libc-dev linux-headers tzdata \
      mysql-dev libxml2-dev \
      libxslt-dev nodejs git \
      mysql-client

# Install gems
RUN gem install bundler
COPY ./Gemfile /tmp/
COPY ./Gemfile.lock /tmp/
RUN cd /tmp && bundle install

# Add code base
COPY . /app
WORKDIR /app

CMD ["puma"]
