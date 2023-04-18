void main() {
  int a = 10;

//If Statement
  if (a < 30) {
    print("helllo a value less than 30");
  }

//if-else statement
  if (a < 20) {
    print("helllo a value less than 20");
  } else {
    print("helllo a value greater than 20");
  }

//if else if statement

  var marks = 100;
  if (marks > 85) {
    print("Excellent");
  } else if (marks > 75) {
    print("Very Good");
  } else if (marks > 65) {
    print("Good");
  } else {
    print("Average");
  }

  //switch case statement
  int x = 10;

  switch (x) {
    case 1:
      print("x value is 1");
      break;
    case 2:
     print("x value is 2");
      break;
    case 10:
     print("x value is 10");
      break;
    default:
     print("print x value is $x");
  }
}


// 40<30 - false 