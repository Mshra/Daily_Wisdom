FROM python:3.11

WORKDIR /bot

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "-w", "4", "'main:app'"]
