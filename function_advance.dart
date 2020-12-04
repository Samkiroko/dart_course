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
// typedef Greet = String Function(String);
// void main() {
//   final sayHi = (String name) => 'Hi,$name';
//   welcome(sayHi, 'Andrea');
// }

// void welcome(String Function(String) greet, String name) {
//   print(greet(name));
//   print('welcome to the course');
// }

/*closures*/

// void main() {
//   const muitiplier = 10;
//   const list = [1, 2, 3];
//   final result = list.map((x) {
//     return x * muitiplier;
//   });
//   print(result);
// }

/*the foreach method*/
// void main() {
//   const list = [1, 3, 4];
//   list.forEach((value) => print(value));
//   for (var value in list) {
//     print(value);
//   }
// }

/*The map Method*/
// take a collection and return a new collection
// void main() {
//   const list = [1, 3, 4];
//   list.forEach(print);
//   final double = list.map((value) => value * 2);
//   print(double);
//   // using for loop
//   final double2 = [];
//   for (var value in list) {
//     double2.add(value * 2);
//   }
// }

/*Iterable and tolist*/
void main() {
  const list = [1, 3, 4];
  list.forEach(print);
  final List<int> double = list.map((value) => value * 2).toList();
  print(double);
}
