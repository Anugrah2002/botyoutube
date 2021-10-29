#!/bin/bash -l

apt-get update
apt-get install firefox -y
apt-get install curl -y
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
source $HOME/.poetry/env
PATH="/root/.poetry/bin:$PATH"
git clone https://github.com/ContentAutomation/YouTubeUploader.git
cd YouTubeUploader
poetry install
cd /
ls
docker-compose up -d