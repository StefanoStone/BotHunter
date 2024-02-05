FROM bitnami/python:3.9.18

# Move in server folder
WORKDIR /bothunter

# Copy requirements.txt and install all dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files in server directory
COPY . .

# Run BotHunter.py
ENTRYPOINT [ "python",  "BotHunter.py"]
CMD ["--help"]
