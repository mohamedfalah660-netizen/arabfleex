FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
فتح البورت 8080 عشان Back4App يقرأ السيرفر
EXPOSE 8080
CMD ["python", "app.py"]
