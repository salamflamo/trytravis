#!/bin/bash
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
    # Initialize a new git repo in _site, and push it to our server.
    cd  testing
    git init
        
    git remote add deploy "fans17@fansdev.warungtegal.id:/home/fans17/testing -p 3010"
    git config user.name "Travis CI"
    git config user.email "untungsuprapto@gmail.com"
    
    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, since this branch isn't master."
fi
