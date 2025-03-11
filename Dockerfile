FROM python:alpine
COPY flask-app/app/requirements.txt /usr/share/app/requirements.txt
COPY flask-app/app /usr/share/app
WORKDIR /usr/share/app
RUN pip install --no-cache-dir -r requirements.txt
ENV NOMBRE xxx
EXPOSE 5002
CMD [ "python3", "app.py"]
