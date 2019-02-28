FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /name_randomizer
WORKDIR /name_randomizer
COPY Gemfile /name_randomizer/Gemfile
COPY Gemfile.lock /name_randomizer/Gemfile.lock
RUN bundle install
COPY . /name_randomizer

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3001

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
