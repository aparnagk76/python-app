FROM python:3.8.3-alpine
WORKDIR /app
ADD . /app
RUN pip install -r requirements.txt
EXPOSE 5000
HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost:5000/ || exit 1

CMD ["python", "app.py"]