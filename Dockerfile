FROM wlserver1/ytupload:latest
RUN ls
RUN entrypoint.sh
ADD ./ /
RUN pip3 install cloudinary 
RUN python3 views.py