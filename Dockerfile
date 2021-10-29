FROM wlserver1/ytupload:latest
ADD ./ /
RUN ls
RUN chmod +x /entrypoint.sh
RUN /entrypoint.sh
# RUN pip3 install cloudinary 
# RUN cd YouTubeUploader
# RUN python3 views.py