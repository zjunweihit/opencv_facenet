#!/bin/sh

echo "##### extracting embeddings #####"
sleep 1

python3 extract_embeddings.py --dataset dataset --embeddings output/embeddings.pickle --detector face_detection_model --embedding-model openface_nn4.small2.v1.t7

echo "##### training the model #####"
sleep 1
python3 train_model.py --embeddings output/embeddings.pickle --recognizer output/recognizer.pickle --le output/le.pickle
