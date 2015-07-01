FROM ruby
MAINTAINER Hǎiliàng Wáng <w@h12.me>

RUN gem install --no-document \
    compass \
    susy \
    breakpoint

WORKDIR /work

ENTRYPOINT [ "compass compile --force --output-style=compressed --trace" ]
