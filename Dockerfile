FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install ruby
RUN gem install bundler
ADD . /doc
WORKDIR /doc
ENTRYPOINT [ "bundle", "exec", "middleman", "server" ]
