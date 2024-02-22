netcat:
	sudo docker build -f netcat.Dockerfile -t netcat1 .
	sudo docker run -it netcat1
