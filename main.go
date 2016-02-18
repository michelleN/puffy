package main

import (
	"io"
	"net/http"
)

func indexHandler(res http.ResponseWriter, req *http.Request) {
	io.WriteString(res, "Hello world from Puffy!")
}

func healthHandler(res http.ResponseWriter, req *http.Request) {
	io.WriteString(res, "Don't worry. Puffy is fine!\n")
}

func main() {
	http.HandleFunc("/index", indexHandler)
	http.HandleFunc("/healthz", healthHandler)
	http.ListenAndServe(":8080", nil)
}
