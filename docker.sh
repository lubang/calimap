docker run --name calimap --restart=always \
    -p 80:10100 \
    -v $PWD/calimap/:/app \
    -d jazzdd/alpine-flask