import "package:test/test.dart";

import 'main.dart';

void main() {
  test("Bubble Sort", () {
    var list = [5,1,2,4,8];
    for (var x in list){
      if (x == null || !(x is int)){
        throw ArgumentError;
      }
    }
    expect(bubbleSort(list), equals([1,2,4,5,8]));
  });
}