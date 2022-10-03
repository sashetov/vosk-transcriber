#!/bin/bash
. venv/bin/activate
python3 vosk-api/python/example/test_simple.py test.wav > result.json
python3 vosk-api/python/example/test_srt.py test.wav > result.srt
