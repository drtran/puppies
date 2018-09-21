FROM ruby:1.9
RUN bundle config --global frozen 1
WORKDIR /usr/src/app

COPY Gemfile* ./

RUN bundle install

COPY . .

RUN rake db:migrate
RUN rake db:seed

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]

