import 'dart:collection';

class DartHash {
  hash() {
    // hashset
    // unique, unordered
    Set epicSet = HashSet();

    epicSet.add(10);
    epicSet.add(20);
    epicSet.add(30);
    epicSet.add(40);
    epicSet.add(10);
    print(epicSet);

    epicSet.remove(20);
    print(epicSet);

    print(epicSet.contains(10));

    for (var set in epicSet) {
      print(set);
    }

    // hashmap
    HashMap hashmap = HashMap();

    hashmap['1'] = 10;
    hashmap['2'] = 20;
    hashmap['1'] = 20; // it will overwrite
    hashmap['1'] = 10; // it will overwrite
    // hashmap[1] = 10;

    print(hashmap);
  }
}
