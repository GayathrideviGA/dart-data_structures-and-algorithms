void main() {
  List<int> listOfNum = [1, 5, 7, 9, 10, 12, 15, 18, 20, 25];
  print(maxPairWiseProduct(listOfNum));
}

maxPairWiseProduct(List<int> numList) {
  int max1 = 0;
  int max2 = 0;
  for (int i = 0; i < numList.length; i++) {
    if (numList[i] > max1) {
      max2 = max1;
      max1 = numList[i];
    }
    if (numList[i] > max2 && numList[i] < max1) {
      max2 = numList[i];
    }
  }
  return max2 * max1;
}
