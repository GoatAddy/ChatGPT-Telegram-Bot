# Official lightweight Python image use kar rahe hain
FROM python:3.10-slim

# Workdir set karo
WORKDIR /app

# Dependencies install karne ke liye requirements copy karo
COPY requirements.txt .

# Dependencies install karo
RUN pip install --no-cache-dir -r requirements.txt

# Baaki project files copy karo
COPY . .

# Bot run karne ke liye default command
CMD ["python", "bot.py"]
