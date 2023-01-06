package main

/*
#cgo LDFLAGS: -static -lcpucycles
#include <cpucycles.h>
#include <stdlib.h>
#include <stdio.h>

void printCpuCycles() {
    long long persecond = cpucycles_persecond();
    printf("%lld\n", persecond);
}
*/
import "C"

func main() {
	C.printCpuCycles()
}
