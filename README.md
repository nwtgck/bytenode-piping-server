# bytenode-piping-server
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
