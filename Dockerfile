# NOTE: Multi-stage Build

FROM node:10.15-alpine as build

COPY . /build

# Move to /build
WORKDIR /build

# Install requirements and build
RUN npm install && \
    npm run build


FROM node:10.15-alpine

LABEL maintainer="Ryo Ota <nwtgck@gmail.com>"

# Install bytenode globally
RUN npm install -g bytenode

# Copy build files to /app
COPY --from=build /build/dist /app

# Run entry (Run the server)
ENTRYPOINT ["bytenode", "/app/index.jsc"]
