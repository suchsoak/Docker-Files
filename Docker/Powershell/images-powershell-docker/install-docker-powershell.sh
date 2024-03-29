if (""); then

sudo docker run -it mcr.microsoft.com/powershell:preview
Echo "powershell-docker installed!"

else
    sudo apt-get update
    sudo apt-get install docker.io
    sudo service docker start
    sudo docker run -it mcr.microsoft.com/powershell:preview
    Echo "powershell-docker installed!"
    
fi

else
    Echo "Had a problem!!"