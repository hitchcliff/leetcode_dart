class DartLists {
  // lists or arrays
  lists() {
    // lists
    var myLists = [1, 2, 3];
    print(myLists);
    print(myLists[0]);

    // Change an item
    myLists[0] = 41;
    print(myLists);

    // create an empty list
    var emptyList = [];
    print(emptyList);

    // add to empty list
    emptyList.add(100);
    print(emptyList);

    // add multiple to empty lists
    emptyList.addAll([1, 2, 3]);
    print(emptyList);

    // insert at specific position
    myLists.insert(1, 400);
    print(myLists);

    // insert many
    myLists.insertAll(2, [500, 600, 700]);
    print(myLists);

    // mixed lists
    var mixedLists = [1, 2, 3, "test"];
    print(mixedLists);

    // remove from lists
    mixedLists.remove(2); // strictly equal
    print(mixedLists);

    // remove from specific location
    mixedLists.removeAt(0);
    print(mixedLists);
  }
}
