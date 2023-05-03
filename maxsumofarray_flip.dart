// Function to find the maximum sum after flipping a subarray
import 'dart:math';

int maxSumFlip(List<int> a, int n) {
  // Find the total sum of array
  int totalSum = 0;
  for (int i = 0; i < n; i++) {
    totalSum += a[i];
  }

  // Using Kadane's Algorithm
  int maxEndingHere = -a[0] - a[0];
  int currSum = -a[0] - a[0];

  for (int i = 1; i < n; i++) {
    // Either extend previous sub_array or start new subarray
    currSum = (currSum + (-a[i] - a[i])).compareTo((-a[i] - a[i])) > 0
        ? (currSum + (-a[i] - a[i]))
        : (-a[i] - a[i]);

    // Keep track of max_sum array
    maxEndingHere = max(maxEndingHere, currSum);
  }

  // Add the sum to the totalSum
  int maxSum = totalSum + maxEndingHere;

  // Check maxSum was maximum with flip or without flip
  maxSum = max(maxSum, totalSum);

  // Return maxSum
  return maxSum;
}

void main() {
  List<int> arr = [-2, 3, -1, -4, -2];
  int N = arr.length;

  // Function Call
  print(maxSumFlip(arr, N));
}
