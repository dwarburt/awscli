FROM python:3.8.0-buster
RUN pip install awscli

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/depian \
   $(lsb_release -cs) \
   stable" && \
   apt-get update && \
   apt-get install docker-ce-cli