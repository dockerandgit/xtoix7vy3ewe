FROM python:3.9-slim

# Install only essentials
RUN apt-get update && apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Define volumes for config and data
VOLUME /config
VOLUME /data

# Run your script from /config/script.py
CMD ["python", "/config/script.py"]
