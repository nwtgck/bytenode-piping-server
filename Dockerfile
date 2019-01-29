FROM node:10.15-alpine as build

LABEL maintainer="Ryo Ota <nwtgck@gmail.com>"

COPY . /app

# Move to /app
WORKDIR /app

# Install requirements and build
RUN npm install && \
    npm run build

# Run entry (Run the server)
ENTRYPOINT ["./node_modules/.bin/bytenode", "piping-server/dist/src/index.jsc"]
