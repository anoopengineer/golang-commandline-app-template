package main

import (
	"fmt"

	"github.com/anoopengineer/golang-commandline-app-template/log"
)

const APPNAME = "YOUR_APP_NAME_HERE"

var (
	VERSION    = "" //Auto populated gy goxc
	BUILD_DATE = "" //Auto populated gy goxc
)

func main() {
	log.Error(fmt.Sprintf("Application starting up. AppName = %s, Version = %s, BUILD_DATE = %s", APPNAME, VERSION, BUILD_DATE))
}
