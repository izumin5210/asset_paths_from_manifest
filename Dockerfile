FROM ruby:2.4.0-alpine

ENV APP /app
WORKDIR $APP

RUN apk --update add \
    build-base \
  && apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    entrykit \
  && rm -rf /var/cache/apk/*

ENTRYPOINT [ \
  "prehook", "ruby -v", \
  "prehook", "bundle install --jobs 4 --quiet --path vendor/bundle", \
  "--" \
]
