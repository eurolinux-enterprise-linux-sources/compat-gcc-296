/* Another test case for over-eager multiple include optimization.
   This one distilled from glibc's setlocale.c and categories.def.  */
/* { dg-do compile } */

#define X a
#include "mi3.def"
#undef X

#define X b
#include "mi3.def"
#undef X

int
main(void)
{
  return a + b;
}
