#! /bin/bash
echo "Run build script for demo pipeline"
docker start mongoDB
pip install pymongo
python insertar.py
