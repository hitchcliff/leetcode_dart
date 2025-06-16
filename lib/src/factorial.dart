/// Sum factorial
int factorial(n) {
  if (n == 0) {
    return n;
  }

  return n + factorial(n - 1);
}
