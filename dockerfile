FROM python:3.8

RUN /usr/local/bin/python -m pip install --upgrade pip

WORKDIR /app 

COPY requirements.txt ./requirements.txt

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8501

ENTRYPOINT ["streamlit", "run"]

CMD ["stream_app.py"]