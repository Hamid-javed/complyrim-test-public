FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl
ADD . /app
EXPOSE 22
CMD ["/app/run.sh"]
