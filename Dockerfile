# begin Dockerfile
FROM ghcr.io/astral-sh/uv:python3.11-alpine
RUN apk add --no-cache git


RUN adduser runner --uid 1001 --disabled-password

WORKDIR /app

COPY requirements.txt /requirements.txt

RUN uv pip install --no-cache-dir --system --requirement /requirements.txt

# Switch to the non-root user
USER runner

RUN python3 -c "import pytest"

CMD ["python3", "-m", "pytest", "--version"]

# end Dockerfile
