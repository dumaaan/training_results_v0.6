#!/bin/sh
set -ex
mkdir -p ./data/coco/

cp annotations_trainval2014.zip data/coco/annotations_trainval2014.zip
cp coco_annotations_minival.tgz data/coco/coco_annotations_minival.tgz
cp train2014.zip data/coco/train2014.zip
cp val2014.zip data/coco/val2014.zip

cd ./data/coco/

if [ ! -d annotations ]; then
if [ -f train2014.zip ]; then
tar xzf coco_annotations_minival.tgz
unzip -n annotations_trainval2014.zip
fi
fi

if [ ! -d train2014 ]; then
if [ -f train2014.zip ]; then
unzip -n train2014.zip
fi
fi


if [ ! -d val2014 ]; then
if [ -f val2014.zip ]; then
unzip -n val2014.zip
fi
fi