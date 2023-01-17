
#include <iostream>
int main (){
    int a = 0, b = 1, c = 1;
    int n = 7; 
    for (int i=0; i<n; i++){
        c = a + b; 
        a = b; 
        b = c; 
        std::cout << c << "\n";
    }
}
