// The time complexity of the given code is O(n) because it uses a loop to generate the Fibonacci series.
// This loop runs n-1 times to generate the Fibonacci series up to the n-th number.

// The space complexity of the given code is O(n) because it uses an array of size n+1 to store the Fibonacci series.
void main() {
  generateFibonacciNumber(1);
}

generateFibonacciNumber(int num) {
  List<int> f = List<int>.filled(num + 1, 0);
  f[0] = 0;
  f[1] = 1;
  for (int i = 2; i <= num; i++) {
    f[i] = f[i - 1] + f[i - 2];
  }
  print(f[num]);
  return f[num];
}
