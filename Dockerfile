FROM ruby:3.0.2-alpine 

RUN apk add --update --virtual \
    runtime-deps \ 
    python2 \
    postgresql-client \ 
    build-base \ 
    libxml2-dev \ 
    libxslt-dev \ 
    nodejs \ 
    yarn \ 
    libffi-dev \ 
    readline \
    build-base \
    postgresql-dev \
    libc-dev \
    linux-headers \ 
    readline-dev \ 
    file \ 
    imagemagick \ 
    git \ 
    tzdata \ 
    && rm -rf /var/cache/apk/*

WORKDIR /myapp 
COPY . /myapp/

# COPY Gemfile /myapp/Gemfile
# COPY Gemfile.lock /myapp/Gemfile.lock

ENV BUNDLE_PATH /gems 
ENV config.hosts "wizards.fly.dev"

RUN yarn install 
RUN bundle install 

# ENTRYPOINT ["bin/rails"] 
# CMD ["s", "-b", "0.0.0.0"]

EXPOSE 3000

# docker run -p 3000:3000 myapp

# set the root as the rails app 
# ENV APP_PATH /var/app
# ENV BUNDLE_VERSION 2.2.27
# ENV BUNDLE_PATH /usr.local.bundle.gems
# ENV TMP_PATH /tmo/ 
# ENV RAILS_LOG_TO_STDOUT
# ENV RAILS_PORT 3000

# RUN apk add --update --virtual \
#     postgresql-client \ 
#     nodehs \ 
#     yarn \ 
#     readline

