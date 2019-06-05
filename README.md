
# Overview

This repository provides an example [AWS CloudFormation](https://aws.amazon.com/cloudformation/) template for running
a [Docker Registry](https://docs.docker.com/registry/) on AWS. Normally, you would use the
[Amazon Elastic Container Registry](Amazon Elastic Container Registry) (ECR) to host Docker images, but
if you have a need for a truly public repository, this is an example of how to do so. This is not a production grade deployment,
it is a proof of concept. This example has zero security configured for the repository.
