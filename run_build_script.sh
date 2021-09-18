#! /bin/bash
echo "Run build script for demo pipeline"
docker run -d -p 27017:27017 --name m1 mongo
pip3 install pymongo
python insert.py
