FROM python:3
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 4000
CMD [ "python" , "app.py" ]