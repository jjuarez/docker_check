FROM ruby:2.5.4-alpine3.9@sha256:16a781fb1d7019d6719388b0f6e7120a80798b728110f056c1f49fcfd8130468

LABEL maintainer="javier.juarez@gmail.com" \
      version="0.1.2"

COPY Gemfile /opt/app/
COPY app /opt/app/

RUN set -ex && \
    cd /opt/app && \
    bundle install --without development test

ENTRYPOINT ["/opt/app/exe/app"]
CMD ["work"]
