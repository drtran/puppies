# Simple RoR project by Cheezy

** Check out my update toward the end of this doc

== Puppies example application

This is an example application that I am developing to use in an ATDD course as well
as my book.

Once you download (clone) the project you will need to ensure you have all of the necessary gems.  You can do this by executing:

    bundle

in the puppies directlry.  After this command completes you can start the application by executing:

    rails s

This will start the application.  Simply point your browser at http://localhost:3000 and you should see the puppy appliation.

If you would like to populate the database with some sample puppies, you can execute the following commands:

    rake db:seed

    rake db:migrate

This will populate the database with a few sample puppies. You may need run theese commands with bundle exec as:

    bundle exec rake db:seed
    bundle exec rake db:migrate  


Note:  If you had already executed the 'rails s', you may want to stop it by pressing Control-C before you seed the database.
When the rake command completes, execute 'rails s' again to start the server again.

# Containerized the app

I created a Dockerfile to containerize the puppies app.
Run the docker build as follows:

``` bash

docker build -t drtran/puppies .
docker run -p 3000:3000 -it drtran/puppies

```

