FROM zedtux/ruby-1.9.3
RUN bundle
RUN bundle exec rake db:seed
RUN bundle exec rake db:migrate
RUN rail s