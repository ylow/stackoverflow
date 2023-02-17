#include <stdio.h>
#include <string.h>


int do_admin_stuff() {
  printf("Do Admin Stuff!!!\n");
  fflush(stdout);
  return 0;
}

int check_user() {
  char username[8] = {0};
  int admin = 0;

  FILE* f = fopen("input.txt","r");
  fgets(username, 128, f);
  fclose(f);

  // if username is admin it is always ok
  admin = (strcmp(username, "admin") == 0);
  return admin;
}

int main() {
  int user_ok = check_user();
  if (user_ok) {
    printf("User is Ok!\n");
  } else {
    printf("User is Not!\n");
  }
}
