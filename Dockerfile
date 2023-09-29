FROM docker:dind

# Add packages required to add user, run composer, make, git , bash and wget.
RUN apk add --update-cache\
  ca-certificates\
  shadow \
  make \
  git \
  wget \
  php81 \
  php81-common \
  php81-gd \
  php81-mbstring \
  php81-openssl \
  php81-phar \
  php81-posix \
  php81-simplexml \
  php81-soap \
  php81-xml \
  php81-zip \
  php81-phar \
  php81-openssl \
  bash


# Add composer to image.
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer


# Add user to run tests.
RUN useradd --user-group -u 1000  --create-home -s /bin/bash tester

