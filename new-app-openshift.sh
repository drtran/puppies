#!/bin/sh

# already logged in and situated at a project in openshift
# my puppies website: 
# http://puppies-drtran.7e14.starter-us-west-2.openshiftapps.com/

oc new-app --name=puppies drtran/puppies
oc expose svc puppies
