#include <stdio.h>
#include "module.h"
#include "module2.h"

int main()
{
  printf("Hello, World! Multi result: %d\n", multi(3));
  printf("Add result: %d", add(3, 5));

  return 0;
}
