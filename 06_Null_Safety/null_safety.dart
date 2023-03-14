//----------------- Null-aware access operator -----------------
void main() {
  final cities = <String?>['London', 'Paris', null, 'New York'];
  for (var city in cities) {
    print(city
        ?.toUpperCase()); // This will return null if the city is null instead of throwing an exception error
  }
}
//----------------- The augmented assignment if-null operator -----------------
// void main() {
//   String? name;
//   name ??= 'No name on record';
//   print(name); // No name on record
// }

//----------------- if-null (null access cascade operator) -----------------
// bool isReallyEmpty(String? inputstring) => inputstring?.isEmpty ?? true;

// void main() {
//   print(isReallyEmpty('')); // true
//   print(isReallyEmpty(null)); // true
//   print(isReallyEmpty('Word')); // false
// }
//------------- Flow analysis: Definite Assignment -------------
// void main() {
//   int a;
//   int b = 2;
//   //int c = b >= 1 ? 1 : -1;

//   if (b == 2) {
//     a = 1;
//   } else {
//     a = 2;
//   }
//   print(a);
// }

// //------------- Flow analysis: Promotion -------------
// void main() {
//   int? a;
//   int b = 2;
//   if (a == null) {
//     print('a is null');
//   } else {
//     print(a + b);
//   }
// }

//------------- late keyword where there's no other choice -------------
// class MyClass {
//   late final int myNumber;

//   MyClass() {
//     myNumber = 42;
//   }

//   void printMyNumber() {
//     print(myNumber);
//   }
// }

// void main() {
//   final myClass = MyClass();
//   myClass.printMyNumber();
// }

//------------- late keyword -------------
// late String? name;

// bool isReallyEmpty(String? inputstring) => inputstring?.isEmpty ?? true;

// main() {
//   name = null;
//   print(isReallyEmpty('')); // true
//   print(isReallyEmpty(null)); // true
//   print(isReallyEmpty('Word')); // false
//   print(name ?? 'No name on record'); // null
// }
