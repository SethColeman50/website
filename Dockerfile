FROM python:slim

WORKDIR /app

COPY requirements.txt .

RUN python3 -m venv .venv
RUN .venv/bin/pip3 install -r requirements.txt

COPY app .

# CMD ["python3", "app.py"]
CMD [".venv/bin/gunicorn", "-w4", "--bind", "0.0.0.0:5000", "app:launch()"]
