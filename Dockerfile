FROM maven:3.6-jdk-11

LABEL maintainer="henrique.schmidt@somosphi.com"

# export variables
ENV PATH="~/.local/bin:$PATH"

# run
RUN apt-get --yes update && \
    apt-get --yes install bash curl python3 && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py && \
    rm get-pip.py && \
    pip install --upgrade pip && \
    pip install awscli --upgrade
