FROM python:2.7.11-slim

EXPOSE 5000
RUN pip install --upgrade pip && pip install virtualenv && virtualenv /env
COPY ./requirements.txt /app/requirements.txt
RUN /env/bin/pip install -r /app/requirements.txt

COPY . /app

CMD ["/env/bin/python", "/app/slowyourload.py"]
