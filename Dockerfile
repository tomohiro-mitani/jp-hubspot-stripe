FROM ruby:2.6.3

# get bundler 2
RUN gem update --system

WORKDIR /app
COPY . /app
RUN bundle install
EXPOSE 4567

CMD ["bundle", "exec", "ruby", "app.rb", "-o", "0.0.0.0", "-p", "4567"]
