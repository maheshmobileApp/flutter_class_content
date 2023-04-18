void main() {
  final value = addValues(10, 30);
  print("value is $value");
  callTheValues(20);

  final x = 100;
  
  var y = 80;

  y = 90;
  // x = 45;
}

//with return type and parametes list
int addValues(int a, int b) {
  int x;

  x = a + b;

  return x;
}

//with return type and no parameters
double printTheValue() {
  return 0.0;
}

//without return type and parameters
void callTheValues(int a) {}

/**returntype functionNames(parameterlist) {



    return 0;

}
 */