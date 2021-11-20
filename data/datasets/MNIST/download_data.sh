#!/usr/bin/env bash
echo "Downloading Train Images"
wget http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
gzip -d train-images-idx3-ubyte.gz

echo "Downloading Train Labels"
wget http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
gzip -d train-labels-idx1-ubyte.gz

echo "Downloading Test Images"
wget http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz 
gzip -d t10k-images-idx3-ubyte.gz

echo "Downloading Test Labels"
wget http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz 
gzip -d t10k-labels-idx1-ubyte.gz

