// Copyright (c) 2012 MIT License by 6.172 Staff

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// My macro here.
#define PRINT_SIZE(type) printf("size of %s : %zu bytes\n", #type, sizeof(type));

int main() {
  // Please print the sizes of the following types:
  // int, short, long, char, float, double, unsigned int, long long
  // uint8_t, uint16_t, uint32_t, and uint64_t, uint_fast8_t,
  // uint_fast16_t, uintmax_t, intmax_t, __int128, and student

  // Here's how to show the size of one type. See if you can define a macro
  // to avoid copy pasting this code.
  printf("size of %s : %zu bytes \n", "int", sizeof(int));
  // e.g. PRINT_SIZE("int", int);
  //      PRINT_SIZE("short", short);

  // Alternatively, you can use stringification
  // (https://gcc.gnu.org/onlinedocs/cpp/Stringification.html) so that
  // you can write
  // e.g. PRINT_SIZE(int);type[i]
  // Composite types have sizes too.
  typedef struct {
    int id;
    int year;
  } student;

  student you;
  you.id = 12345;
  you.year = 4;


  // Array declaration. Use your macro to print the size of this.
  int x[5];

  // You can just use your macro here instead: PRINT_SIZE("student", you);
  printf("size of %s : %zu bytes \n", "student", sizeof(you));

  // Print the size of each type.
  // int, short, long, char, float, double, unsigned int, long long
  // uint8_t, uint16_t, uint32_t, and uint64_t, uint_fast8_t,
  // uint_fast16_t, uintmax_t, intmax_t, __int128, and student
  PRINT_SIZE(int);
  PRINT_SIZE(short);
  PRINT_SIZE(long);
  PRINT_SIZE(char);
  PRINT_SIZE(float);
  PRINT_SIZE(double);
  PRINT_SIZE(unsigned int);
  PRINT_SIZE(unsigned long);
  PRINT_SIZE(long long);
  PRINT_SIZE(uint8_t);
  PRINT_SIZE(uint16_t);
  PRINT_SIZE(uint32_t);
  PRINT_SIZE(uint64_t);
  PRINT_SIZE(uint_fast8_t);
  PRINT_SIZE(uint_fast16_t);
  PRINT_SIZE(uintmax_t);
  PRINT_SIZE(intmax_t);
  PRINT_SIZE(__int128);
  PRINT_SIZE(student);
  PRINT_SIZE(x);

  printf("\n");

  PRINT_SIZE(int*);
  PRINT_SIZE(short*);
  PRINT_SIZE(long*);
  PRINT_SIZE(char*);
  PRINT_SIZE(float*);
  PRINT_SIZE(double*);
  PRINT_SIZE(unsigned int*);
  PRINT_SIZE(unsigned long*);
  PRINT_SIZE(long long*);
  PRINT_SIZE(uint8_t*);
  PRINT_SIZE(uint16_t*);
  PRINT_SIZE(uint32_t*);
  PRINT_SIZE(uint64_t*);
  PRINT_SIZE(uint_fast8_t*);
  PRINT_SIZE(uint_fast16_t*);
  PRINT_SIZE(uintmax_t*);
  PRINT_SIZE(intmax_t*);
  PRINT_SIZE(__int128*);
  PRINT_SIZE(student*);
  PRINT_SIZE(&x);

  return 0;
}
