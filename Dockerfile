FROM ubuntu
RUN apt-get update
RUN apt install -y python3
RUN mkdir app
WORKDIR /app
COPY . .
RUN apt-get -y install python3-pip
RUN pip install pipenv
RUN apt install -y python3.10-venv
RUN python3 -m venv myenv
RUN python3 -m pip install Django
RUN pip install -r requirements.txt

CMD ["python3","manage.py","runserver", "0.0.0.0:8000"]
