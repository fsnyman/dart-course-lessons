// This is a Dart file where I tested the type system in Dart.
// ------------------- dynamic -------------------
void main() {
  dynamic name = 'Francois';
  name = 42;

  print(name.runtimeType); // Output: int

  name = true;
  print(name.runtimeType); // Output: bool
}

//------------------- const -------------------
// void main() {
//   var name = 'Francois';
//   const upperName = name.toUpperCase(); // Error: This code will not tun because name.toUpperCase() is not known at compile time.

//   print(name.runtimeType); // Output: String
//   print(age.runtimeType); // Output: int
// }

// //------------------- Type Inference -------------------
// void main() {
//   String name = 'Francois';
//   final nameUpper = name.toUpperCase();
//   final int age = 42;

//   print(name.runtimeType); // Output: String
//   print(name.runtimeType); // Output: String
//   print(age.runtimeType); // Output: int
// }
