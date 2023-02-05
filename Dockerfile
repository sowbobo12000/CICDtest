FROM python:3.8-slim

COPY . .

RUN pip install -r requirements.txt

WORKDIR /flask/src

EXPOSE 5123

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=5123"]