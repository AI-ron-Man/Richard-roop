docker build . -f Dockerfile.cpu -t richard-roop-cpu
docker run -it --rm \
    -v ~/ML/media/:/Richard-roop/media/ \
    -v ~/ML/models:/Richard-roop/models \
    -v ~/ML/models/.insightface/:/root/.insightface/ \
    -v ~/ML/models/.opennsfw2/:/root/.opennsfw2/ \
    richard-roop-cpu \
    -f ./media/source.jpg -t ./media/target.jpg -o ./media/output.jpg