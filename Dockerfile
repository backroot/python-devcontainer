FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    build-essential curl git \
    libffi-dev libncurses5-dev zlib1g zlib1g-dev bzip2 \
    libgdbm-dev libbz2-dev libssl-dev libsqlite3-dev \
    libreadline-dev liblzma-dev

RUN curl https://pyenv.run | bash

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
RUN echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc
