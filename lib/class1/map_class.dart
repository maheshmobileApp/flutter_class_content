void main() {
  //create the map object
  Map students = {"name": "dart", "age": 23, "salary": 23333.00};
  print(students);
  print("kyes in student ${students.keys}");

  //get the value from map object based on key
  print(students["age"]); //23

  print(students["number"]); // null

  //add
  students["phone"] = 8999000098;
  print(students);
  students["name"] = "flutter";
  print(students);

  //remove

  students.remove("name");
  print(students);

  // students.clear();

  // Map Properties
  // key: it is used to get all keys in object
  print(students.keys); //
  // values: it is used to get all values in object
  print(students.values); //

  //length: it returns the lenth of object
  print(students.length);

  // isEmpty
  //isNotEmpty

  print(students.isEmpty);
  print(students.isNotEmpty);

// Map Methods

//addAll() : it adds multiple key-valu pairs
  students.addAll({"address": ["hyd","tnsdfa"], "company": "xyz"});
  print(students);

  //remove

  //foreach : it is used to iterate the map's entires

  // "" -> string
  // true/false - > bool
  // 38735377 -> int
  //98473.000 -> double
  // [] -> list(array)
  // {} -> map

  // var emp = new Map();
}
