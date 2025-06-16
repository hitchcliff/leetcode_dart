class DartMaps {
  // Maps key/value pairs
  maps() {
    // sample map
    var toppings = {"test": "john", "test2": "doe"};
    print(toppings);
    print(toppings['test3']); // print out by toppings[key]

    // show values
    print(toppings.values);

    // show length
    print(toppings.length);

    // add
    toppings['test3'] = "mary";
    print(toppings);

    // add many
    toppings.addAll({'test4': "chenie", "test5": "lukey"});
    print(toppings);

    // remove one
    toppings.remove("test"); // remove by toppings[key]
    print(toppings);

    // remove everything
    toppings.clear();
    print(toppings);
  }
}
