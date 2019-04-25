FROM python:3.6

ENV FLASK_APP platzi-api  
ENV PLATZI_DB_URI mongodb+srv://alexis-curso:wCvRPOgNla0UsnWl@alexis-curso-mongodb-wirbu.mongodb.net 
ENV FLASK_ENV development

WORKDIR /usr/src/platzi-api

COPY ./requirements.txt /usr/src/platzi-api

RUN pip install -r requirements.txt

ADD /platzi-api/ /usr/src/platzi-api

WORKDIR /usr/src/

CMD ["flask", "run", "--host=0.0.0.0" ]