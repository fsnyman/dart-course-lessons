//create boilerplate dart file
import 'dart:io';

void main() {
  //declare variables
  String name = 'John';
  int age = 30;
  double height = 6.1;
  bool isMarried = false;

  //print variables
  print(name);
  print(age);
  print(height);
  print(isMarried);

  //print variables with string interpolation
  print('My name is $name');
  print('My age is $age');
  print('My height is $height');
  print('Am I married? $isMarried');

  //print variables with string interpolation and string concatenation
  print('My name is ' + name);
  print('My age is ' + age.toString());
  print('My height is ' + height.toString());
  print('Am I married? ' + isMarried.toString());

  //print variables with string interpolation and string concatenation
  print('My name is $name and I am $age years old');
  print(
      'My name is $name and I am $age years old. My height is $height and am I married? $isMarried');

  //print variables with string interpolation and string concatenation
  print('My name is $name and I am ${age + 5} years old');
  print(
      'My name is $name and I am ${age + 5} years old. My height is $height and am I married? $isMarried');

  //print variables with string interpolation and string concatenation
  print(
      'My name is $name and I am ${age + 5} years old. My height is ${height + 0.5} and am I married? $isMarried');

  //print variables with string interpolation and string concatenation
  print(
      'My name is $name and I am ${age + 5} years old. My height is ${height + 0.5} and am I married? ${isMarried == true}');
}
