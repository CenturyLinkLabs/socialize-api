FROM centurylinklabs/ruby-base:2.1.2

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y libpq-dev

ADD . /tmp
WORKDIR /tmp
RUN bundle install --without development
