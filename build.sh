#!/bin/bash
sudo rm -rf venv
python3 -m venv venv
source venv/bin/activate
sudo venv/bin/python3 -m pip install --no-cache-dir -r requirements.txt
git clone https://github.com/alphacep/vosk-api
cd vosk-api/python/example
#wget https://alphacephei.com/kaldi/models/vosk-model-small-en-us-0.3.zip
#unzip vosk-model-small-en-us-0.3.zip
#mv vosk-model-small-en-us-0.3 model
wget https://alphacephei.com/vosk/models/vosk-model-en-us-aspire-0.2.zip
unzip vosk-model-en-us-aspire-0.2.zip
mv vosk-model-en-us-aspire-0.2 model
deactivate
