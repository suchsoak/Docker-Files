proxy:
	sudo docker build -f proxychains.Dockerfile -t proxy1 .
	sudo docker run -it proxy1
