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
// void main() {
//   const list = [1, 3, 4];
//   list.forEach(print);
//   final List<int> double = list.map((value) => value * 2).toList();
//   print(double);
// }
//  NOTE many colletion methods returns iterables
// use .tolist() to convert to a List

/* The where and firstWhere methods*/
/*firstWhere*/
// Get the first item that matches a certain condition
// void main() {
//   const list = [1, 3, 4, 6];
//   final even = list.where((value) => value % 2 == 0);
//   final odd = list.where((value) => value % 2 != 0);
//   print(odd);
//   print(even);
// }

/*
## Exercise: Impliment the `where` function 
- A list of items
- A function argument that can be used to filter items in 
the list by evaluating  each item with a boolean condition 

The function should return a new list, which contains the items
filtered using the function argument.

Use generics, so the `where` function can work on list of any type 

Then, use this function to retrieve all the odd numbers from this list `[1,2,3,4]`,
and print the result.

*/

// void main() {
//   const list = [1, 2, 4, 5, 17, 19, 49];
//   final odd = where<int>(list, (value) => value % 2 != 0);
//   print(odd);
// }

// List<T> where<T>(List<T> items, bool Function(T) f) {
//   var result = <T>[];
//   for (var item in items) {
//     if (f(item)) {
//       result.add(item);
//     }
//   }
//   return result;
// }
/*Implement the firstWhere fuction*/

void main() {
  const list = [1, 2, 3, 465, 5, 6, 67];
  final result = firstWhere(list, (x) => x == 5, orElse: () => -1);
  print(result);
}

T firstWhere<T>(List<T> items, bool Function(T) f, {T Function() orElse}) {
  for (var item in items) {
    if (f(item)) {
      return item;
    }
  }
  return orElse();
}
