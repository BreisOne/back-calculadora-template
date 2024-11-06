FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt .

RUN python -m venv venv
RUN source venv/bin/activate

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]