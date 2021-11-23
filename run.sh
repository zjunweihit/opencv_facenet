#!/bin/sh

echo "##### running the model #####"

if [ ! -z "$1" ]; then
    if [ "$1" == "pic" ]; then
      if [ ! -z "$2" ]; then
        echo "Error: please set an image name as well"
      fi
      python3 recognize.py --detector face_detection_model --embedding-model openface_nn4.small2.v1.t7 --recognizer output/recognizer.pickle --le output/le.pickle --image images/"$2".jpg
    elif [ "$1" == "video" ]; then
      python3 recognize_video.py --detector face_detection_model --embedding-model openface_nn4.small2.v1.t7 --recognizer output/recognizer.pickle --le output/le.pickle
    fi
fi
