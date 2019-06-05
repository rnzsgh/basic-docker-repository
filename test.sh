#!/bin/bash

STACK_NAME=docker-a

ACCOUNT_ID=$(aws sts get-caller-identity --output text --query 'Account')

ENV_NAME=dev

KEY_NAME=SOMETHING

HOSTNAME=some.domain.com

CERT_ARN=arn:aws:acm:us-east-1:$ACCOUNT_ID:certificate/44147128-b634-438f-85af-95dc39a1f0a4

# Change this!
SECRET=2382SdUfjsdfjFJKSq

aws cloudformation create-stack \
  --stack-name $STACK_NAME \
  --template-body file://stack.cfn.yml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
  ParameterKey=CertificateArn,ParameterValue=$CERT_ARN \
  ParameterKey=KeyName,ParameterValue=$KEY_NAME \
  ParameterKey=RegistryHostname,ParameterValue=$HOSTNAME \
  ParameterKey=RegistrySecret,ParameterValue=$SECRET


