#include <stdio.h>

int main(int argc, char *argv[])
{
  int c;

  if ((getchar() != EOF) == 0)
    printf("getchar is return 0\n");
  else if ((getchar() != EOF) == 1)
    printf("getchar is return 1\n");

  return 0;
}
