package main

import "fmt"

const APPNAME = "YOUR_APP_NAME_HERE"

var (
	VERSION    = "" //Auto populated gy goxc
	BUILD_DATE = "" //Auto populated gy goxc
)

func main() {
	fmt.Printf("Application starting up. AppName = %s, Version = %s, BUILD_DATE = %s\n", APPNAME, VERSION, BUILD_DATE)
}
