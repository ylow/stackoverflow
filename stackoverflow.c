#include <stdio.h>
int main() {
  char c[16] = {0};
  gets(c);
  printf("You entered %s\n", c);
}
