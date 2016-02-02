FROM python:2.7.11-slim

EXPOSE 5000
RUN pip install --upgrade pip && pip install virtualenv && virtualenv /env && /env/bin/pip install gunicorn

COPY ./requirements.txt /app/requirements.txt
RUN /env/bin/pip install -r /app/requirements.txt

COPY . /app

WORKDIR /app
CMD ["/env/bin/gunicorn", "-w 4", "-b 0.0.0.0:5000", "slowyourload:app"]
