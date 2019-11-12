FROM node:8-stretch

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y curl python3

# Set a timezone
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./bin /app/bin
COPY ./blueprints /app/blueprints
COPY ./build /app/build
COPY ./config /app/config
COPY ./server /app/server
COPY ./src /app/src

COPY .babelrc .editorconfig .eslintignore .eslintrc .reduxrc package.json nodemon.json /app/
WORKDIR /app

ENV PUBLIC_URL=/
ENV NODE_ENV=production
RUN npm install

COPY app /app

CMD ./start.sh

HEALTHCHECK --interval=5s --timeout=30s --retries=50 \
  CMD curl -f localhost:$PORT || exit 1
