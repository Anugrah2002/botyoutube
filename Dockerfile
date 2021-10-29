FROM wlserver1/ytupload:latest
ADD ./ /
RUN ls
RUN /entrypoint.sh
RUN pip3 install cloudinary 
RUN python3 views.py