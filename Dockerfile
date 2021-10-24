FROM wlserver1/ytupload:latest
ADD ./ /
RUN pip3 install cloudinary
RUN python -m pip install --upgrade gtts
RUN python -m pip install --upgrade gtts-token

RUN python3 views.py
