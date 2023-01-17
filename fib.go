package main
import ("fmt")

func main() {
  
	var a, b, c, n int = 0, 1, 1, 50
	for i := 1; i < n + 1; i++ {
		c = a + b
		a = b
		b = c
		fmt.Println(c)
	}
}