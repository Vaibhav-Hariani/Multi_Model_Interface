#ollama dockerfile
FROM ollama/ollama:rocm
EXPOSE 11434
COPY ./ollama_docker/pull_models.sh /tmp/pull_models.sh
WORKDIR /tmp
ENTRYPOINT ["echo", "hello world"]