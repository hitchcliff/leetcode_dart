List<int> dailyTemperatures(List<int> temperatures) {
  final result = List<int>.filled(temperatures.length, 0);
  final queue = <int>[];

  for (int i = 0; i < temperatures.length; i++) {
    while (queue.isNotEmpty && temperatures[i] > temperatures[queue.last]) {
      int prevIndex = queue.removeLast();
      result[prevIndex] = i - prevIndex;
    }
    queue.add(i);
  }

  return result;
}
