import 'dart:io';
// This is a Dart file where I tested collections in Dart.

// ------------------- Copting Collections -------------------
void main() {
  var originalList = [1, 2, 3];
  var copiedList = originalList;
  print(
      'Simple assignment, before change. Original: $originalList, Copied: $copiedList');
  print('Adding 4 to original list, not the copied list...');
  originalList.add(4);
  print(
      'Simple assignment, after change. Original: $originalList, Copied: $copiedList \n');
  var copiedList2 = [...originalList];
  print(
      'Spread operator, before change. Original: $originalList, Copied: $copiedList2');
  print('Adding 5 to original list, not the copied list...');
  originalList.add(5);
  print(
      'Spread operator, after change. Original: $originalList, Copied: $copiedList2');
}

// //------------------- Composable use of if, for and Spread -------------------

// void main() {
//   var wantMore = true;
//   var babyNames = ['Jack', 'Jill', 'Bob', 'Alice'];
//   var moreBabyNames = ['John', 'Jane', 'Jack', 'Joe'];

//   var finalBabyNamesList = [
//     ...babyNames,
//     if (wantMore)
//       for (var name in moreBabyNames)
//         if (name.length < 4) name + ' Snyman'
//   ];
//   print(finalBabyNamesList);
// } 

// //------------------- Spreads -------------------

// void main() {
//   bool likeBiltong = true;
//   bool likeMilkTart = false;
//   var moreSAFood = [
//     'Bobotie',
//     'Bunny Chow',
//     'Braai',
//   ];
//   var saFoodForYou = [
//     moreSAFood, //this will nest the list
//     ...moreSAFood, //this will spread the list
//     if (likeBiltong) 'Biltong',
//     if (likeMilkTart) 'Milk Tart',
//   ];
// // notes that this can also be don with:
// // saFoodForYou.addAll(moreSAFood);
//   print(
//       saFoodForYou); //[[Bobotie, Bunny Chow, Braai], Bobotie, Bunny Chow, Braai, Biltong]
// }

// //------------------- Collection-for -------------------
// void main() {
//   bool likeBiltong = true;
//   bool likeMilkTart = false;
//   var moreSAFood = [
//     'Bobotie',
//     'Bunny Chow',
//     'Braai',
//   ];
//   var saFoodForYou = [
//     for (var food in moreSAFood) food + '!',
//     if (likeBiltong) 'Biltong',
//     if (likeMilkTart) 'Milk Tart',
//   ];
// // notes that this can also be don with:
// // saFoodForYou.addAll(moreSAFood);
//   print(saFoodForYou); // [Bobotie, Bunny Chow, Braai, Biltong]
// }

// //------------------- Collection-if -------------------
// void main() {
//   bool likeBiltong = true;
//   bool likeMilkTart = false;
//   var moreSAFood = [
//     'Bobotie',
//     'Bunny Chow',
//     'Braai',
//   ];
//   var saFoodForYou = [
//     moreSAFood, //this will nest the list
//     ...moreSAFood, //this will spread the list
//     if (likeBiltong) 'Biltong',
//     if (likeMilkTart) 'Milk Tart',
//   ];
// // notes that this can also be don with:
// // saFoodForYou.addAll(moreSAFood);
//   print(
//       saFoodForYou); //[[Bobotie, Bunny Chow, Braai], Bobotie, Bunny Chow, Braai, Biltong]
// }
// // ------------------- Maps -------------------
// void main() {
//   var mymap = {'key1': 'value1', 'key2': 'value2', 'key3': 'value3'};
//   for (var thekey in mymap.keys) {
//     print(thekey);
//     // to get the value of the key use map[key]
//     print(mymap[thekey]);
//   } //for loop
//   // alternative syntax
//   for (var myEntry in mymap.entries) {
//     print('${myEntry.key} : ${myEntry.value}');
//   } //for loop
// } //main


// // ---- null value when key does not exist ----
// void main() {
//   var map = {'key1': 'value1', 'key2': 'value2'};
//   print(map['key3']); //null
// // check if key exists
//   if (map.containsKey('key3')) {
//     print(map['key3']);
//   } else {
//     print('Key does not exist');
//   } //if else
// } //main

// ---- Manipulating data in Maps ----

// -- main for the following few examples --
// void main() {
//   Map England = {
//     'Capital': 'London',
//     'Population': 60000000,
//     'Currency': 'Pound Sterling',
//     'Language': 'English'
//   }; // Map England
//   // -- the as operator --
//   var englandPopulation = England['Population'] as int;
//   print(England['Population'].runtimeType);
//   print(englandPopulation + 1); //London
// } //main
// // -- Change data --
//   print(England['Population']); //60000000
//   England['Population'] = 65000000;
//   print(England['Population']); //65000000

// // -- Add key value pair --
//   print(England); //60000000
//   //{Capital: London, Population: 65000000, Currency: Pound Sterling, Language: English}
//   England['New'] = 'Yeh Baby!';
//   print(England);
//   //{Capital: London, Population: 65000000, Currency: Pound Sterling, Language: English, New: Yeh Baby!}
// }
// ---- Basics ----
// void main() {
//   Map England = {
//     'Capital': 'London',
//     'Population': 60000000,
//     'Currency': 'Pound Sterling',
//     'Language': 'English'
//   }; // Map England
//   Map<String, dynamic> SouthAfrica = {
//     'Capital': 'Pretoria',
//     'Population': 60000000,
//     'Currency': 'Rand',
//     'Language': 'English'
//   }; // Map SouthAfrica
//   Map<int, int> numbers = {1: 1, 2: 4, 3: 9, 4: 16, 5: 25};
//   const bob = <String, dynamic>{
//     // can be declared with var final or const
//     'name': 'Bob',
//     'age': 25,
//     'height': 1.75,
//     'weight': 75,
//     'isMarried': false
//   };

//   print(England['Capital']); //London
//   print(SouthAfrica['Language']); //null
//   print(numbers[5]); //25
//   print("${bob['name']}'s age is ${bob['age']}"); //25
// } //main

// // ------------------- Sets -------------------
// void main() {
//   final countries = <String>{'London', 'London', 'London', 'London'};
//   print(countries); //{London};
//   countries.add('Cape Town');
//   countries.addAll({'Amsterdam', 'Paris', 'Paris', 'Paris'});
//   print(countries); //{London, Cape Town, Amsterdam, Paris}
//   print('First Country: ${countries.first}'); //First Country: London
//   print('Is Cape Town in the set: ${countries.contains('Cape Town')}');
//   //Is Cape Town in the set: true
//   print('Last Country: ${countries.last}'); //Last Country: Paris
//   print('Set lenght: ${countries.length}'); //Set lenght: 4
//   int i = 0;
//   for (String country in countries) {
//     if (country == 'Cape Town') {
//       print(
//           'Cape Town is at position ${i + 1} in the set. Not ordered my ass!');
//       // Cape Town is at position 2 in the set. Not ordered my ass!
//       break;
//     } //if
//     i++;
//   } //for loop
// } //main

// //--- Union, Intersection, Difference ---
// void main() {
//   var africanCountries = {'South Africa', 'Kenya', 'Zimbabwe'};
//   var europeanCountries = {'France', 'Germany', 'Italy', 'South Africa'};
//   print(africanCountries.union(europeanCountries));
//   // {South Africa, Kenya, Zimbabwe, France, Germany, Italy}
//   // Note South Africa is only printed once
//   print(africanCountries.intersection(europeanCountries)); // {South Africa}
//   print(africanCountries.difference(europeanCountries)); // {Kenya, Zimbabwe}
//   // Note that only 'different' countries in the first set are printed
//   // subset
// }

// // ------------------- Lists -------------------
// ---- Basics ----
// void main() {
//   List cities = ['London', 'Paris', 'New York', 'Cape Town'];
//   for (var iterator = 0; iterator < cities.length; iterator++) {
//     print(cities[iterator]);
//   } //for loop
// } //main

// // ---- List Exercice ----
// // Create a basic proram that adds 5 numbers to a list and prints them out.
// void main() {
//   List numbers = [1, 3, 5, 7, 9];
//   var answer = 0;
//   for (var value in numbers) {
//     answer = value + answer;
//   } //for loop
//   print(answer);
// }

// ---- List Methods ----
// void main() {
//   List cities = ['London', 'Paris', 'New York', 'Cape Town'];
//   print(
//       'Cities list: $cities'); //Cities list: [London, Paris, New York, Cape Town]
//   print(
//       'There are ${cities.length} Cities in the list'); //There are 4 Cities in the list
//   print(
//       '\'.isNotEmpty\' output on the cities list is: ${cities.isNotEmpty}'); //'.isNotEmpty' output on the cities list is: true
//   print(
//       '\'.isEmpty\' output on an empty list is: ${[].isEmpty}'); //'.isEmpty' output on an empty list is: true
//   print(
//       'The first city in thelist is ${cities.first}'); //The first city in thelist is London
//   print(
//       'The last city in the list is ${cities.last}'); //The last city in the list is Cape Town
//   print(
//       'The second city in the list is ${cities[1]}'); //The second city in the list is Paris
//   // remove New York and add Lisbon in its place
//   cities.removeAt(2);
//   print(cities); //[London, Paris, Cape Town]
//   cities.insert(2, 'Lisbon');
//   print(cities); //[London, Paris, Lisbon, Cape Town]
//   cities.clear();
//   print('Cities list empty: ${cities.isEmpty}'); //Cities list empty: true
//   cities = ['London', 'Paris', 'New York', 'Cape Town'];
//   print(
//       'Is Lisbon in the list?: ${cities.contains('Lisbon')}'); //Is Lisbon in the list?: false
//   print(
//       'Paris is in position ${cities.indexOf('Paris') + 1} in the city list'); //Paris is in position 2 in the city list
//   print(
//       'Something that is not in the list show up as ${cities.indexOf('bleh')}'); //Something that is not in the list show up as -1
// } //main

// void main() {
//   List<String> cities = ['London', 'Paris', 'Cape Town'];
//   print('Cities list: $cities'); //Cities list: [London, Paris, Cape Town, 5]
//   List<int> numbers = [1, 3, 5, 7];
//   print('Numbers list: $numbers'); //Numbers list: [1, 3, 5, 7, 9]
//   //!!!!! But it is better to user var, const or final to declare a list
//   //To declare a list using var, but still casting it as a list of strings:
//   var names = <String>['Bob', 'Jack', 'Zoe'];
//   print(names); //[Bob, Jack, Zoe]
// }
// // print(' ${}');
