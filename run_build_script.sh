#! /bin/bash
echo "Run build script for demo pipeline"
docker start m1
pip install pymongo
python insert.py
