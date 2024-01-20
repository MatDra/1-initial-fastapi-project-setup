FROM python:3.10-slim

WORKDIR /app

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./backend ./backend

CMD ["uvicorn","backend.main:app","--host","0.0.0.0","--port","80", "--reload"]