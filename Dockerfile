FROM python:3.8-alpine
LABEL maintainer="zerocod3r"

WORKDIR /discord_bot

COPY index.py ./index.py
COPY config.json ./config.json
COPY requirements.txt ./requirements.txt
COPY ./cogs ./cogs
COPY ./utils ./utils

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "index.py"]
