#!/bin/bash

# Step 1: Install Node:
# Go to: https://nodejs.org/en/download/package-manager/

# Step 2: Install serverless
npm install -g serverless

# Step 3: Setup serverless
serverless config credentials --provider aws --key XXX --secret YYY --profile serverless-admin

# Setup template for lambda function
sls create --template aws-nodejs --path <PATH AND NAME OF DIRECTORY>
# Will create a handler and serverless yaml file

#Invoke function through command line NOTE -l shows return value
sls invoke -f <name of function> -l

# deploy function and stack
sls deploy -v

#deply function only and not stack. Will update the function faster
sls deploy function -f <name of function>

# retreive logs for a function this will update in real time if new logs come in 
sls logs -f <func name> -t

# destroy service and stack
sls remove
