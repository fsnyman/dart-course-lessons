// This file is used to test various dart basics while learing dart. Each section is commented out and can be tested individually.

// // --------------------- Operators ---------------------
// // ---- Bitwise Operators ----
// void main() {
//   // assign variables
//   int num1 = 0xf0; // binary 11110000
//   int num2 = 0x0f;
//   // bitwise OR
//   print(num1 | num2); // binary 11111111, decimal 255
//   // bitwise AND
//   print(num1 & num2); // binary 00000000, decimal 0
//   // bitwise XOR
//   print(num1 ^ num2); // binary 11111111, decimal 255
//   // bitwise NOT
//   print(~num1); // binary 00001111, decimal 15
//   // bitwise left shift
//   print(num1 << 2); // binary 1111000000, decimal 240
//   // bitwise right shift
//   print(num1 >> 2); // binary 00111100, decimal 60
//   // bitwise right shift with zero fill
//   print(num1 >>> 2); // binary 00111100, decimal 60
//   // bitwise AND with NOT
//   print(num1 & ~num2); // binary 11110000, decimal 240
//   // bitwise OR with NOT
//   print(num1 | ~num2); // binary 11111111, decimal 255
//   // bitwise XOR with NOT
//   print(num1 ^ ~num2); // binary 00001111, decimal 15
//   // >>= operator
//   num1 >>= 2;
//   print(num1); // binary 00111100, decimal 60
//   // <<= operator
//   num1 <<= 2;
//   print(num1); // binary 1111000000, decimal 240
//   print(num1.toRadixString(2)); // 1111000000
//   print(num1.toRadixString(16)); // f0
// }

// ---- Logical Operators ----
// void main() {
//   // and
//   print(5 > 2 && true); // true
//   // or
//   print(5 > 2 || 5 < 2); // true
//   // not
//   print(!(5 == 5)); // false
//   // ternary operator (named like this because it has 3 operands)
//   print((5 > 1) ? 'Bigger than 1' : 'Smaller than 1'); // Bigger than 1
// }

// //---- Relational Operators ----
// void main() {
//   // assign variables
//   int num1 = 5;
//   int num2 = 2;
//   // greater than
//   print(num1 > num2); // true
//   // greater than or equal to
//   print(num1 >= num2); // true
//   // less than
//   print(num1 < num2); // false
//   // less than or equal to
//   print(num1 <= num2); // false
//   // equal to
//   print(num1 == num2); // false
//   // not equal to
//   print(num1 != num2); // true
// }

// // Increment and decrement operators
// void main() {
//   int x = 1;
//   int y = x++; //assigns y the value of x, then increments x by 1

//   print('y=$y, x=$x'); // y=1, x=2
//   y = ++x; //increments x by 1, then assigns y the value of x
//   print('y=$y, x=$x'); // y=3, x=3

//   x = 1;
//   y = x--; //assigns y the value of x, then decrements x by 1
//   print('y=$y, x=$x'); // y=1, x=0
//   y = --x; //decrements x by 1, then assigns y the value of x
//   print('y=$y, x=$x'); // y=-1, x=-1
// }

// // ---- Augmented Assignment Operators ----
// void main() {
//   double x = 7;
//   int y = 7;
//   print(x += 2); // x = x + 2, x = 9.0
//   print(x -= 2); // x = x - 2, x = 7.0
//   print(x *= 2); // x = x * 2, x = 14.0
//   print(x /= 2); // x = x / 2, x = 7.0 x must be double to use /= operator
//   print(x %= 2); // y = y % 2, y = 1.0, This must not be confused with the decimal value
//   print(y ~/= 2); // y = y ~/ 2, y = 3, y must be int to use ~/= operator
// }

// // ----Arithmetic Operators----
// void main() {
//   // assign variables
//   int num1 = 5;
//   int num2 = 2;
//   // add
//   print(num1 + num2); // 7
//   // subtract
//   print(num1 - num2); // 3
//   // multiply
//   print(num1 * num2); // 10
//   // divide
//   print(num1 / num2); // 2.5
//   // integer division
//   print(num1 ~/ num2); // 2
//   // modulo
//   print(num1 % num2); // 1
// }

// // --------------------- Conversions between types ---------------------
// void main() {
//   int age = 36;
//   double hights = 1.88;

//   // convert age to a string
//   String ageString = age.toString();

//   // convert hights to a string with only 1 decimal place
//   String hightsString = hights.toStringAsFixed(1);
//   print(age + 1); // 37
//   print(ageString + '1'); // 361
//   print(hightsString); // 1.9 Note that it was rounded up

//   // convert hightString back to a double
//   double hightsDouble = double.parse(hightsString);
//   print(hightsDouble); // 1.9

//   // convert hight to int rounding down
//   int hightsIntDown = hights.toInt();
//   // convert hight to int rounding
//   int hightsIntRound = hights.round();
//   print(hightsIntDown); // 1
//   print(hightsIntRound); // 2
// }

// // --------------------- Basics of Strings ---------------------
// // ---- Finding and replacing strings ----
// void main() {
//   String name = 'Francois Snyman';
//   String newName = name.replaceAll('Snyman', 'Smith');
//   print(name); // Francois Snyman
//   print(newName); // Francois Smith
// }

// // the .replaceAll() method can be used to replace a string with another string
// // ---- String Case Conversion ----
// void main() {
//   // assign variables
//   String name = 'Francois';
//   String surname = 'Snyman';
//   // print in upper case
//   print('${name.toUpperCase()} ${surname.toUpperCase()}');
//   // print in lower case
//   print('${name.toLowerCase()} ${surname.toLowerCase()}');
//   // print first letter of name and surname in upper case
//   print(
//       '${name[0].toUpperCase()} ${surname[0].toUpperCase()}${surname.substring(1).toLowerCase()}');
// }

// // ---- Multi line Strings ----
// void main() {
//   print('''Use \\n to print a new line, and remember,
// I will work for \$0 per hour just to get experience.
// See how the line breaks without the use of \\n?''');
// }
// // ---- Raw Strings ----
// void main() {
//   print(r'Use \n to print a new line');
//   print(r'I will work for $0 per hour just to get experience');
// }

// // ---- String Escaping ----
// void main() {
//   print('Hello, I\'m Francois');
//   print(
//       'Use \\n to print a new line'); // without the first \ the \n will break the line
//   print('I will work for \$0 per hour just to get experience');
// }

// // ---- String interpolation with $ ----
// void main() {
//   String concatString1 = 'Hallo ';
//   String concatString2 = 'Francois ';
//   String concatString3 = 'Snyman';
//   print('$concatString1 Mr. $concatString2 $concatString3 , how are you?');
// }

// // ---- String concatenation with + ----
// void main() {
//   String concatString1 = 'Hallo ';
//   String concatString2 = 'Francois ';
//   String concatString3 = 'Snyman';
//   String finalVar =
//       concatString1 + concatString2 + concatString3 + ', how are you?';
//   print(finalVar);
//   print(finalVar + ', I hope you are well');
// }

// // --------------------- Basics of Variables ---------------------
// //---- Declaring Variables ----
// // Built-in Types
// void main() {
//   String name = 'Bob';
//   int age = 70;
//   bool isAwesome = true;
//   double height = 1.88;
//   print(
//       'Hello $name, next year you will be ${age + 1} years old, you are $height meters tall, with awesome status: $isAwesome');
// }
