FROM wlserver1/ytupload:latest
ADD ./ /
RUN pip install cloudinary
RUN python3 views.py
