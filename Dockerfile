FROM ruby:2.7-alpine

LABEL version="2.0.1"
LABEL repository="https://github.com/deepakmahakale/jekyll-action"
LABEL homepage="https://github.com/deepakmahakale/jekyll-action"
LABEL maintainer="Deepak Mahakale <deepakmahakale@gmail.com>"

RUN apk add --no-cache git build-base

# debug
RUN bundle version

COPY LICENSE README.md /

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
