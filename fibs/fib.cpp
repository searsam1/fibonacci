
// int main(int argc, char *argv[]) { /* ... */ }

// argc (ARGument Count) is int and stores number of command-line 
// arguments passed by the user including the name of the program.
 // So if we pass a value to a program, value of argc would be 2  
// (one for argument and one for program name)

// The value of argc should be non negative.
// argv(ARGument Vector) is array of character pointers listing all
// the arguments.
// If argc is greater than zero, the array elements from argv[0] to 
// argv[argc-1] will contain pointers to strings.
// Argv[0] is the name of the program , After that till argv[argc-1] 
// every element is command -line arguments.

// int main(int argc, char *argv[]) { /* ... */ }
#include <iostream>
void dogYearsToHuman(int dogAge) {
  
  int earlyYears, laterYears, humanYears; 
  earlyYears = 21;
  //first two years of my dogs' life
  
  laterYears = (dogAge - 2) * 4;
  //for my dogs' following years
  
  humanYears = earlyYears + laterYears;
  //for my dogs' total human years

  std::cout << "My name is Oreo! Ruff ruff, I am " << humanYears << " years old in human years. \n";
  //output statement that gives user their dogs calculated age in human years

}
int main(int argc, char const *argv[])
{
    
    // get input from command line arguments (argv)
    const char* n = argv[1];
    
    // convert const char* to int using std::stoi()
    int x = std::stoi(n); 
    dogYearsToHuman(x); 
    return 0;
}


// /opt/homebrew/Cellar/gcc/12.2.0/bin/c++-12