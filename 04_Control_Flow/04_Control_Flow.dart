// This is a Dart file where I tested control flow in Dart.
// ------------------- if / else -------------------
// void main() {
//   const age = 25;
//   if (age < 18) {
//     print('You are a minor.');
//   } else if (age < 21) {
//     print('You are a young adult.');
//   } else {
//     print('You are an adult.');
//   }

//   // ------------------- for -------------------
//   for (var i = 0; i < 5; i++) {
//     print('i = $i');
//   }

//   // ------------------- while -------------------
//   var i = 0;
//   while (i < 5) {
//     print('i = $i');
//     i++;
//   }

//   // ------------------- do while -------------------
//   i = 0;
//   do {
//     print('i = $i');
//     i++;
//   } while (i < 5);

//   // ------------------- switch -------------------
//   switch (age) {
//     case 18:
//       print('You are 18.');
//       break;
//     case 21:
//       print('You are 21.');
//       break;
//     default:
//       print('You are neither 18 nor 21.');
//   }

//   // ------------------- break -------------------
//   for (var i = 0; i < 5; i++) {
//     if (i == 3) {
//       break;
//     }
//     print('i = $i');
//   }

//   // ------------------- continue -------------------
//   for (var i = 0; i < 5; i++) {
//     if (i == 3) {
//       continue;
//     }
//     print('i = $i');
//   }
// }
// // ------------------- enumerations -------------------
// // an example of how to use enumerations in Dart
enum Medal {
  gold,
  silver,
  bronse,
  noMedal,
}

void main() {
  const medalWon = Medal.gold;
  print(Medal
      .values); // Output: [Medal.gold, Medal.silver, Medal.bronse, Medal.noMedal]
  print(medalWon); // Output: Medal.gold
  print(medalWon.name); // Output: gold

  switch (medalWon) {
    case Medal.gold:
      print('You won gold!');
      break;
    case Medal.silver:
      print('You won silver!');
      break;
    case Medal.bronse:
      print('You won bronse!');
      break;
    case Medal.noMedal:
      print('You won no medal!');
      break;
  }
}

//------------------- more experiments -------------------
// void main() {
//   int z = 1;
//   while (z <= 5) {
//     print('x' * z);
//     z++;
//   }
// }

// void main() {
//   for (int z = 1; z <= 5; z++) {
//     print('x' * z);
//   }
// }
// // same result as with while loop, but less lines of code

// import 'dart:math';
// import 'dart:io';

// void main() {
//   //generate a random number between 1 and 10
//   String randomNumber = (Random().nextInt(9) + 1).toString();
//   //loop indefinitely
//   while (true) {
//     print('Guess a number from 1 to 10:');
//     String input = (stdin.readLineSync()).toString();
//   //if the user guesses the correct number, they win! Use break to escape the loop
//     if (input == randomNumber) {
//       print('You win! It is $randomNumber!!');
//       break;
//     } else {
//       print('You lose! You will never escape! Try again.');
//     }
//   }
// }

// import 'dart:math';

// void main() {
//   int blackSheep = (Random().nextInt(14) + 1);
//   print('The black sheep is number $blackSheep');
//   for (int kidsInClass = 1; kidsInClass <= 15; kidsInClass++) {
//     if (kidsInClass == blackSheep) {
//       continue;
//     }
//     print('Here\'s a sweety for you kid number $kidsInClass');
//   }
// }
