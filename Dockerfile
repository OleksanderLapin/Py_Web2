FROM python:3.11

ENV PYTHONBUFFER=1

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY . /app/
CMD ["python", "Assistant/start_page.py"]
