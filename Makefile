build:
	go build .

image:
	docker build -t mnoorali/puffy:1.0.0 .

push:
	docker push mnoorali/puffy:1.0.0
