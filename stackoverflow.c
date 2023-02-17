#include <stdio.h>
#include <string.h>

char* user1 = "pika";
char* password1 = "pwd";

char username[8] = {0};
char password[8] = {0};
int userpasswordmatch = 0;
int admin = 0;

int main() {

  printf("Username: ");
  gets(username);

  // if username is admin it is always ok
  admin = (strcmp(username, "admin") == 0);

  printf("Password: ");
  gets(password);

  userpasswordmatch = strcmp(username, user1) == 0 && 
                      strcmp(password, password1) == 0;

  if (admin || userpasswordmatch) {
    printf("Pass!\n");
  } else {
    printf("Fail!\n");
  }
}
