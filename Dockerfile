FROM python:3.6
ENV PYTHONUNBUFFERED=1

WORKDIR /code/
COPY requirements.txt /code/
RUN bash -c "pip install --upgrade pip \
 && pip install -r requirements.txt"
COPY . /code/
RUN /code/script/entrypoint.sh

