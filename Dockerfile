FROM ruby:2.5.4-alpine3.9@sha256:16a781fb1d7019d6719388b0f6e7120a80798b728110f056c1f49fcfd8130468

COPY Gemfile application.rb /app/

RUN set -ex && \
    cd /app && \
    bundle install --without development test

ENTRYPOINT ["/app/application.rb"]
CMD ["/app/application.rb"]
