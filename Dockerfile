FROM python:3.9-alpine
COPY app /app
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN pip install -r requriments.txt
CMD ["gunicorn", "-w 4", "-b 0.0.0.0:5000", "app:app"]