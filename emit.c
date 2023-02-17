#include <stdio.h>
int main(){
  char buf[] = "binary stuff here";
  FILE* f = fopen("input.txt","w");
  fwrite(buf, 1, sizeof(buf)-1, f);
  fclose(f);
}
