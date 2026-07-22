FROM python:3.10-slim
WORKDIR /app
RUN pip install flask gunicorn
COPY . .
ENV PORT=8080
EXPOSE 8080
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
