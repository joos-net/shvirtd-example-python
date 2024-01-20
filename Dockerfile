FROM python:3.9-slim

RUN python3 -m venv venv
RUN . venv/bin/activate

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./main.py .
CMD python main.py

EXPOSE "5000"