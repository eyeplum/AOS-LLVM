#include <stdio.h>

int add(int a, int b) {
  return a + b;
}

int main(int argc, char *argv[]) {
  int a = 3;
  int b = 4;
  
  int result = add(a, b);

  return 0;
}

