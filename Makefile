build:
	go build .

image:
	docker build -t mnoorali/puffy:2.0.0 .

push:
	docker push mnoorali/puffy:2.0.0
