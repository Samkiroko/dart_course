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

void main() {
  final person = describe('Samuel', 32);
  print(person);
}

String describe(String name, int age) {
  return "My name is $name. I'm $age years old";
}
