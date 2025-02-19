FROM python:3.10-slim

LABEL maintainer="Kate <kkaten3601@cmc.edu>"

WORKDIR /app

# Copy requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . /app

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
