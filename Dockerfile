ARG NODE_VERSION=lts-buster
FROM node:$NODE_VERSION

ARG SERVERLESS_VERSION=latest
ENV SERVERLESS_VERSION $SERVERLESS_VERSION

WORKDIR /app

RUN yarn global add serverless@$SERVERLESS_VERSION

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip
RUN ./aws/install && aws --version
