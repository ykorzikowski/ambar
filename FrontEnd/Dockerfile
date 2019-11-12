FROM node:8-stretch

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y curl python3

# Set a timezone
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY . /app
WORKDIR /app

RUN npm install

CMD ./start.sh

HEALTHCHECK --interval=5s --timeout=30s --retries=50 \
  CMD curl -f localhost:$PORT || exit 1
