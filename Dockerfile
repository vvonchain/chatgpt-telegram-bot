FROM python:3.9-alpine

# Install dependencies
WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

# Copy the rest of the code
COPY . .

CMD ["sh", "bin/restart_bot.sh"]

