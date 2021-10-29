FROM wlserver1/ytupload:latest
RUN ls
ADD ./ /
RUN entrypoint.sh
RUN pip3 install cloudinary 
RUN python3 views.py