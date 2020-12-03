/*
 function section
 - How to declare and use functions (pass arguments, get return value)
 -difference between named  and positional arguments
 -Default values and required argument + how to use them with Null Safaty
 -Arrow notion (=>) to write more concise functions
 -Lexical scope & inner functions
 -Avoiding globle mutable state & pure functions
*/
// void main() {
//   sayHi();
// }

// void sayHi() {
//   print('hi');
//   print('welcome');
// }

/* Function arguments*/

// void main() {
//   const name = 'andrea';
//   const age = 36;
//   describe(name, age);
//   const name2 = 'samuel';
//   const age2 = 32;
//   describe(name2, age2);
// }

// void describe(String name, int age) {
//   print("My name is $name and I'm $age years old");
// }

/*
Functions help us to write more maintainable code.
change the way a function behaves without changing how we call it.
*/
/* return value */
// void main() {
//   final person = describe('Samuel', 32);
//   print(person);
// }

// String describe(String name, int age) {
//   return "My name is $name. I'm $age years old";
// }

/*
[Exercise ]Sum of a list of numbers
write a function called `sum` that takes a list of values as 
an argument (`List<double>`), and returns the sum of all the values.

Then, call the function muitiple times with different input values
(example: `[]`, `[1,2]`,`[1,2,3,4]`) and print the result.
*/
// void main() {
//   print(sumOf([1, 2, 3, 4]));
// }

// double sumOf(List<double> values) {
//   var sum = 0.0;
//   for (var value in values) {
//     sum += value;
//   }
//   return sum;
// }

/* Name and positional arguments */
/*Use named arguments to improve code readability  */
void main() {
  final person = describe(name: 'Samuel', age: 32);
  print(person);
}

String describe({String name, int age}) {
  return "My name is $name. I'm $age years old";
}
