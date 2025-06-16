List<dynamic> twoSums(arr, target, hashmap, i) {
  final int num = arr[i];
  final int diff = target - arr[i];

  if (hashmap[diff] != null) {
    return [i, hashmap[diff]];
  }

  hashmap[num] = i;

  return twoSums(arr, target, hashmap, i + 1);
}
