prometheus:
	docker build -t $USER_NAME/prometheus ./prometheus
blackbox:
	docker build -t $USER_NAME/blackbox_exporter ./
pushp:
	docker push $USER_NAME/prometheus
pushb:
	docker push $USER_NAME/blackbox_exporter

.PHONY: prometheus_image blackbox pushp pushb
