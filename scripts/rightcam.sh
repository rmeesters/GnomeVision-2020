#!/bin/bash

gst-launch-1.0 -e v4l2src device=/dev/video2 -v !\
     'video/x-raw, format=(string)I420, width=(int)320, height=(int)240, framerate=10/1' !\
     omxh264enc bitrate=150000  ! 'video/x-h264, stream-format=(string)byte-stream' !\
     queue max-size-buffers=0 ! h264parse ! rtph264pay ! udpsink host=DESKTOP-G7MQOUM.local port=5808  &

