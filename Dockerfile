# Dockerfile
FROM prom/prometheus:latest

COPY prometheus/prometheus.yml /etc/prometheus/
COPY prometheus/alert.rules.yml /etc/prometheus/

EXPOSE 9090
CMD [ "--config.file=/etc/prometheus/prometheus.yml" ]
