FROM python:3.9-bullseye

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY cli_app.py fastApi_app.py querydb.py requirements.txt /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt