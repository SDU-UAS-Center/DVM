FROM ghcr.io/astral-sh/uv:debian-slim


RUN apt-get update && apt-get install -y --no-install-recommends nodejs npm ffmpeg

WORKDIR /app
COPY ./package.json /package.json
RUN npm install && npm cache clean --force

COPY . /app
ENV UV_NO_DEV=1
RUN uv sync --locked

RUN chmod u+x ./entrypoint.sh
RUN mkdir /app_data

EXPOSE 5000
ENV PYTHONUNBUFFERED=1
ENV PATH="/app/.venv/bin:$PATH"
CMD ["gunicorn", "-b 0.0.0.0:5000", "-k gevent", "-t 10000", "'dvm:app'"]
