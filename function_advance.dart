/*Function advance*/

/*
Anonymous function & closures
function as arguments
function type (and aliases )
function operators (map, where, reduce) and how to combine them
Generics

**GOAL: Make the most of function and write expressive Dart code**


*/

/*Anonymous function*/
// void main() {
//   final sayHi = (name) => 'Hi,$name';
//   print(sayHi('sam'));
// }
/*Function as first class objects*/
typedef Greet = String Function(String);
void main() {
  final sayHi = (String name) => 'Hi,$name';
  welcome(sayHi, 'Andrea');
}

void welcome(String Function(String) greet, String name) {
  print(greet(name));
  print('welcome to the course');
}
