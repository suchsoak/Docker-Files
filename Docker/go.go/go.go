package main

import(

	"fmt"
	"os"
	"os/user"
	"os/exec"
)


func main() {

    fmt.Println("go say: Hello, World!!!")

	Hostname, err := os.Hostname()
	
	if err != nil {
		fmt.Println("erro", Hostname, err)
	}else{
		fmt.Println("Hostname", Hostname, err)
	}

	whoami, err := user.Current()

	if err != nil {
		fmt.Println("Erro", err)
	}else{

	fmt.Println("Whoami:", whoami.Username)
	}
}
