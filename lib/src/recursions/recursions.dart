class Recursions {
  arrays() {
    print("Hello world");
  }

  bool sortedOrNot(List arr, int i) {
    if (i >= arr.length - 1) {
      return true;
    }

    if (arr[i] > arr[i + 1]) {
      return false;
    }

    return sortedOrNot(arr, i + 1);
  }
}

main() {
  print(Recursions().sortedOrNot([1, 2, 3, 4, 5, 8, 10, 12], 0));
}
