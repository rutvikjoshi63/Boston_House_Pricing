FROM python:3.7
COPY . /app
WORKDIR /app
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
RUN conda install --file requirements.txt
EXPOSE $PORT
CMD gunicorn--workers=4 --bind 0.0.0.0:$PORT app:app