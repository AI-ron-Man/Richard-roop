docker build . -f Dockerfile.gpu -t richard-roop-gpu
docker run -it --rm \
    --gpus all \
    -v ~/ML/media/:/Richard-roop/media/ \
    -v ~/ML/models:/Richard-roop/models \
    -v ~/ML/models/.insightface/:/root/.insightface/ \
    -v ~/ML/models/.opennsfw2/:/root/.opennsfw2/ \
    richard-roop-gpu \
    -f ./media/michelle-obama.jpg -t ./media/serena-red.jpg -o ./media/output___0_.jpg