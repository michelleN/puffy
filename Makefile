build:
	go build .

image:
	docker build -t mnoorali/puffy:2.0.1 .

push:
	docker push mnoorali/puffy:2.0.1
