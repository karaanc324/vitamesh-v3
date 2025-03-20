#!/bin/bash
# aws cloudformation deploy \
#     --template-file templates/template.yaml \
#     --stack-name test-karan \
#     --capabilities CAPABILITY_NAMED_IAM


sam build -t templates/template.yaml
sam deploy --stack-name test-karan --template-file templates/template.yaml --parameter-overrides Project=test-karan Owner=karan Name=test-karan --resolve-s3 --capabilities CAPABILITY_NAMED_IAM