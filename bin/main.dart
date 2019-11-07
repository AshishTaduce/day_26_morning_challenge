// Challenge
// Implement Bubble Sort with list of integers

import 'dart:math';

dynamic bubbleSort(List<int> list) {
  int temp;
  bool swapped = false;

  for (var x in list){
    if (x == null || !(x is int)){
      throw ArgumentError;
    }
  }
  do {
    swapped = false;
    for(var i = 1; i < list.length; i++) {
      if(list[i - 1] > list[i]) {
        temp = list[i - 1];
        list[i - 1] = list[i];
        list[i] = temp;
        swapped = true;

      }
    }
  } while(swapped);
  return list;
}
List <int> sortList = [5,1,2,4,8];
main() {
  Random rand = Random();
  List<int> random = List.generate(10000, (index) => rand.nextInt(100));
  DateTime before = DateTime.now();
  bubbleSort(random);
  random.sort();
  print(DateTime.now().difference(before).inMilliseconds);
}
