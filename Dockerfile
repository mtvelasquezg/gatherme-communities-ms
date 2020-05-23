FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /gatherme_communities

WORKDIR /gatherme_communities

ADD Gemfile /gatherme_communities/Gemfile
ADD Gemfile.lock /gatherme_communities/Gemfile.lock
RUN bundle install
ADD . /gatherme_communities

EXPOSE 3000
