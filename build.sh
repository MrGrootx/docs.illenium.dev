#!/bin/bash

# Install Python
curl -sSL https://install.python-poetry.org | python3 - && \
export PATH="/vercel/.local/bin:$PATH" && \

# Install dependencies
python3 -m pip install --upgrade pip && \
python3 -m pip install -r requirements.txt && \

# Build docs
python3 -m mkdocs build