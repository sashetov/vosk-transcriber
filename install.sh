#!/bin/bash
git clone https://github.com/alphacep/vosk-api
cd vosk-api/python/example
wget https://alphacephei.com/kaldi/models/vosk-model-small-en-us-0.3.zip
unzip vosk-model-small-en-us-0.3.zip
mv vosk-model-small-en-us-0.3 model
