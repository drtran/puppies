FROM ruby:1.9.3-p551

RUN useradd -ms /bin/bash ruby
RUN adduser ruby root

COPY . /usr/ruby/app
WORKDIR /usr/ruby/app

COPY Gemfile* ./

RUN bundle install

RUN chmod -R 775 /usr/ruby/app
RUN chown -R ruby:root /usr/ruby/app

USER ruby

RUN rake db:create
RUN rake db:migrate
RUN rake db:seed

USER root

RUN chmod -R 777 /usr/ruby/app
RUN chown -R ruby:ruby /usr/ruby/app

RUN ls -alR /usr/ruby/app/db
RUN ls -al /usr/ruby/app

EXPOSE 3000

USER ruby

CMD ["rails", "s", "-b", "0.0.0.0"]
