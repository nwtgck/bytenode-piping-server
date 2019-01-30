# bytenode-piping-server
[![](https://images.microbadger.com/badges/image/nwtgck/bytenode-piping-server.svg)](https://microbadger.com/images/nwtgck/bytenode-piping-server "Get your own image badge on microbadger.com")

Precompiled [Piping Server](https://github.com/nwtgck/piping-server)

## Run

```bash
cd <this repo>
npm i
npm start
```

Then, you can access to <http://localhost:8080>.  
All .js files are compiled to .jsc by `npm run build`, which is called by `npm start`.


## Docker

### Run with Docker

```bash
docker run -it -p 8080:8080 nwtgck/bytenode-piping-server
```

Then, a Piping server is running on http://localhost:8080.

### Build by yourself

```bash
cd <this repo>
docker build -t myimage .
```

## Build procedure

Here is an explanation how this project is built by `npm run build`.

1. Build piping-server: (to make `./piping-server/dist`)
1. Bundle `./piping-server`: (to make `./dist`)
1. Compile `./dist/index.js`: (to make `./dist/index.jsc`)
