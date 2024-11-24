FROM python:3.13

WORKDIR /app

ENV REDIS_HOST=localhost

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ] 