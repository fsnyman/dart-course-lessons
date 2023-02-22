// This is a Dart file where I tested collections in Dart.
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

//--- Union, Intersection, Difference, Subset, Superset ---
void main() {
  var africanCountries = {'South Africa', 'Kenya', 'Zimbabwe'};
  var europeanCountries = {'France', 'Germany', 'Italy', 'South Africa'};
  print(africanCountries.union(europeanCountries));
  // {South Africa, Kenya, Zimbabwe, France, Germany, Italy}
  // Note South Africa is only printed once
  print(africanCountries.intersection(europeanCountries)); // {South Africa}
  print(africanCountries.difference(europeanCountries)); // {Kenya, Zimbabwe}
}

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
