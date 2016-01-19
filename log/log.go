package log

import (
	"fmt"

	"github.com/fatih/color"
)

var green = color.New(color.FgHiGreen).SprintFunc()
var orange = color.New(color.FgHiMagenta).SprintFunc()
var red = color.New(color.FgHiRed).SprintFunc()

func Debug(log string) {
	fmt.Println(log)
}

func Info(log string) {
	fmt.Println(green(log))
}

func Warn(log string) {
	fmt.Println(orange(log))
}

func Error(log string) {
	fmt.Println(red(log))
}
