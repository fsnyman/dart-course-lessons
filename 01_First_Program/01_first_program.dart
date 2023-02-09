import 'dart:io';

void printsrting(String input) {
  //print to console
  print('You entered: "' + input + '"');
}

void main(List<String> args) {
  //terurn the arguments passed when running this program
  print('Arguments passed when running this program:');
  print(args);

  //prompt user to enter text and store it in a variable
  print('Please enter a string:');

  String? inputstring = stdin.readLineSync();
  //call the function
  printsrting(inputstring ?? '');
}
