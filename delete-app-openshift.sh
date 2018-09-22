#!/bin/sh

# already logged in and situated at a project in openshift

oc delete route puppies
oc delete svc puppies
oc delete dc puppies
oc delete is puppies