FROM python:3.7
COPY . /app
WORKDIR /app
RUN conda install --file requirements.txt
EXPOSE $PORT
CMD gunicorn--workers=4 --bind 0.0.0.0:$PORT app:app