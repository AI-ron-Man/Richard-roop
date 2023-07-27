docker build . -f Dockerfile.gpu -t richard-roop-gpu
docker run -it --rm \
    --gpus all \
    -v ~/ML/media/:/Richard-roop/media/ \
    -v ~/ML/models:/Richard-roop/models \
    -v ~/ML/models/.insightface/:/root/.insightface/ \
    -v ~/ML/models/.opennsfw2/:/root/.opennsfw2/ \
    richard-roop-gpu \
    -f ./media/source.jpg -t ./media/target.jpg -o ./media/output.jpg