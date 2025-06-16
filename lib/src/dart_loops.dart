class DartLoops {
  // Looping in dart
  loops() {
    // for loop
    int num = 5;
    for (var i = 0; i < num; i++) {
      print(i);
    }

    // for in loop
    var collection = [1, 2, 3, 4, 5];
    for (var c in collection) {
      print('collection $c');
    }

    // while loop
    while (num >= 1) {
      print(num);
      --num;
    }
  }
}
