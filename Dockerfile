FROM python:3.11-slim

# Evita criar arquivos de cache
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBEFFERED=1

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends build-essential libffi-dev && rm -rf /var/lib/apt/lists/*

COPY requeriments.txt /app/requeriments.txt

RUN pip install --no-cache-dir -r /app/requeriments.txt

COPY . /app

ENV FLASK_APP=wsgi.py \
    FLASK_ENV=development

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]