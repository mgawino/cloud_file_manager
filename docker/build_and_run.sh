docker build -t cloud-file-manager --no-cache .
docker run -d \
           -e AWS_ACCESS_KEY_ID=key \
           -e AWS_SECRET_ACCESS_KEY=secret \
           -e S3_ENDPOINT_URL=http://0.0.0.0:4572 \
           -e APP_PORT=5000 \
           --net=host \
           -p 5000:5000 \
           cloud-file-manager
