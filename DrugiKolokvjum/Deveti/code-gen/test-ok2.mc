//OPIS: conditional operator OK
//RETURN: 32

int main() {

  unsigned a;
  unsigned b;

  b = 5u;
  a = 6u; 

  a = (a < b) ? b : 4u;
  if (a == 4u)
    return 32;
  else
    if (a == 5u)
      return 23;
    else
      return 42;
}


