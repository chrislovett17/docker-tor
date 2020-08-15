# docker-tor

Simple tor container listening on 0.0.0.0:9050

### To use, run:

`docker run --rm -p 9050:9050 clovett/tor`

### Test with:

`curl --socks5 http://127.0.0.1:9050 http://ifconfig.me`
