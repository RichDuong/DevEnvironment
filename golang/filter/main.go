package main

import (
   "fmt"
   "strings"
)

func filter[T any](ss []T, test func(T) bool) (ret []T) {
    for _, s := range ss {
        if test(s) {
            ret = append(ret, s)
        }
    }
    return
}

func main(){

ss := []string{"Richard", "Rachel", "Roman", "Steve", "Mark", "Henry"}

testfilter := func(s string) bool { return !strings.HasPrefix(s, "R") && len(s) <= 20 }
s2 := filter(ss, testfilter)

fmt.Println(s2)

}
