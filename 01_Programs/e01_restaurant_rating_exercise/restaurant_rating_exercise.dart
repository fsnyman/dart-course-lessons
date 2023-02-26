import 'package:collection/collection.dart';
import 'dart:math';

final restaurants = [
  {
    'name': 'Pizza Place',
    'cuisine': 'Italian',
    'avgRating': 0.0,
    'ratings': <double>[1.5, 3.5, 1.0, 2.0, 2.5],
  },
  {
    'name': 'Thai Express',
    'cuisine': 'Thai',
    'avgRating': 0.0,
    'ratings': <double>[4.0, 4.5, 4.5, 3.5, 3.5],
  },
  {
    'name': 'Coffee Club',
    'cuisine': 'Coffee',
    'avgRating': 0.0,
    'ratings': <double>[4.5, 4.0],
  },
  {
    'name': 'Burger Town',
    'cuisine': 'American',
    'avgRating': 0.0,
    'ratings': <double>[4.0, 3.5, 4.0],
  },
];
void main() {
  for (var restuarant in restaurants) {
    //given by instructor
    final ratings = restuarant['ratings'] as List<double>; //given by instructor
    //TODO: calculate the average rating and assign it to the 'avgRating' key
    restuarant['avgRating'] = ratings.average.toStringAsFixed(2); //aswer
    print(restuarant['avgRating']);
  }
}
