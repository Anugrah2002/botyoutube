FROM wlserver1/ytupload:latest
RUN ls
RUN pwd
ADD ./ /
RUN apt-get update
RUN apt-get install firefox -y
RUN apt-get install curl -y
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
RUN git clone https://github.com/ContentAutomation/YouTubeUploader.git
RUN cd YouTubeUploader
RUN poetry install
RUN source $HOME/.poetry/env
RUN cd /
RUN ls
RUN pip3 install cloudinary 
RUN docker-compose up -d
RUN python3 views.py