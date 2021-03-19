/*
https://da-bootcamp.firebaseapp.com/?course=start_programming_dart
*/
void main() {
  var x, y;
  x = 16;
  y = 20;
  print("$x + $y = ${x + y}");
  print(r" ");//////////////////////////////////////////////
  String name = "Erica";
  print("$name starts with ${name[0]}.");
  print("Her name contains ${name.length} letters.");
  print(r" ");//////////////////////////////////////////////
  // input values
  num f = 32;
  num c = 100;
  // convert
  num convertedC = (f - 32) / 1.8;
  num convertedF = 1.8 * c + 32;
  print("$f degrees Fahrenheit is $convertedC degrees Celsius.");
  print("$c degrees Celsius is $convertedF degrees Fahrenheit.");
  print(r" "); /////////////////////////////////////////////
  num cold = 60;
  num freezing = 40;
  num temperature = 57;
  print("Is it cold outside?");  
  if (temperature > cold) {
    print("No, quite toasty, really.");
  } else if (temperature > freezing) {
    print("It is a bit cold. Perhaps a jacket.");
  } else {
    print("It's freezing! Where's my coat?");
  }
  print(r" ");//////////////////////////////////////////////
  int number = 7;
  String parity;
  if (number % 2 == 0) {
    parity = "even";
  } else {
    parity = "odd";
  }  
  print("The number $number is $parity.");
  print(r" ");//////////////////////////////////////////////
  String characterRace = "elf";
  switch (characterRace) {
    case "dwarf":
      print("Battle Axe");
      break;
    case "elf":
      print("Longbow");
      break;
    case "goblin":
      print("Short Sword");
      break;
    case "halfling":
      print("Dagger");
      break;
    case "human":
      print("Longsword");
      break;
    case "orc":
      print("Mace");
      break;
    default:
      print("Club");
  }
  print(r" ");//////////////////////////////////////////////
  num score = 78;
  String grade;
  if (score >= 90) {
    grade = "A";
  } else if (score >= 80) {
    grade = "B";
  } else if (score >= 70) {
    grade = "C";
  } else if (score >= 60) {
    grade = "D";
  } else {
    grade = "F";
  }
  print("Score: $score");
  print("Grade: $grade");
  String rating;
  switch (grade) {
    case "A": rating = "Excellent"; break;
    case "B": rating = "Good"; break;
    case "C": rating = "Average"; break;
    case "D": rating = "Deficient"; break;
    case "F": rating = "Failing"; break;
  }
  print("Rating: $rating");
  print(r" ");//////////////////////////////////////////////
  int i = 9;
  while (i <= 10) {
    print(i);
    i++;
  }
  print(r" ");//////////////////////////////////////////////
  int beers = 3;
  do {
    print("$beers bottles of beer on the wall, $beers bottles of beer.");
    print("You take one down, pass it around... ");
    print("${beers -= 1} bottles of beer on the wall.\n");
  } while (beers > 1);
  print(r" ");//////////////////////////////////////////////
  int total = 0;
  for (int i = 1; i <= 3; i++) {
    total += i;
  }
  print("Sum of numbers 1-3: $total");
  print(r" ");//////////////////////////////////////////////
  greet("Erica");
/*
  There are two types of optional parameters in Dart functions. There are positional optional parameters and named optional parameters.
  void myFunction([String param1, int param2, bool param3])

  you can add more sensible defaults to the function declaration:
  void myFunction([String name = "Jim", int age = 30, bool retired = false])
*/
  print("First run:");
  myFunction("Jim", 30, true);
  print("\nSecond run:");
  myFunction("Bob", 54);
  print(r" ");//////////////////////////////////////////////
  print("First run:");
  setFlags();
  print("\nSecond run:");
  setFlags(hidden: true);
  print(r" ");//////////////////////////////////////////////
  //lesson 20
}
void greet(String name) {
  var now = DateTime.now();
  print("Hello $name, ${now.toUtc()}");
}
void myFunction(String name, int age, [bool retired = false]) {
  print(name);
  print(age);
  print(retired);
}
void setFlags({bool bold = false, bool hidden = false}) {
  print(bold);
  print(hidden);
}