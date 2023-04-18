import 'dart:ffi';

void main() {
  List marks = [10, 3, 4, 5, 6, 66, 4, 22, 22, 3, 544];

  print(marks.first); //10

  print(marks.length); //

  print(marks.isNotEmpty); //

  print(marks.last);

  marks.add(12);

  print("marks after add the item $marks");

  marks.addAll([1, 2, 3]);


  marks.insert(9, 89);

  marks.insertAll(0, [3, 4, 5]);

  marks.removeAt(0);
  marks.clear();


}
