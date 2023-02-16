import 'dart:math';
import 'dart:io';

enum Hands {
  rock,
  paper,
  scissors,
}

//A function that takes two strings and prints the outcome of the game
void whoWon(String userHandSend, String computerHandSend) {
  String winner = 'Unknown';
  if (userHandSend == computerHandSend) {
    print('It is a Tie');
  } else if (userHandSend == 'rock' && computerHandSend == 'scissors') {
    print('You won!');
  } else if (userHandSend == 'rock' && computerHandSend == 'paper') {
    print('You lost!');
  } else if (userHandSend == 'paper' && computerHandSend == 'rock') {
    print('You won!');
  } else if (userHandSend == 'paper' && computerHandSend == 'scissors') {
    print('You lost!');
  } else if (userHandSend == 'scissors' && computerHandSend == 'paper') {
    print('You won!');
  } else if (userHandSend == 'scissors' && computerHandSend == 'rock') {
    print('You lost!');
  } //if
} //whoWon main

void main() {
  // initialize the game loop
  String userChoice = '', userHand = '';
  while (true) {
    // choose a random hand from the enum
    var computerHand = Hands.values[Random().nextInt(3)];

    // ask the user to choose a hand
    print(
        '\n\nChoose a hand: (r)ock, (p)aper, (s)cissors or enter Q to Quit: ');
    userChoice = stdin.readLineSync()!; //why the !? A:

    switch (userChoice.toLowerCase()) {
      case ('r'):
        userHand = 'rock';
        whoWon('rock', computerHand.name);
        print('You chose rock and the computer chose ${computerHand.name}');
        break;
      case 'p':
        userHand = 'paper';
        whoWon('paper', computerHand.name);
        print('You chose paper and the computer chose ${computerHand.name}');
        break;
      case 's':
        whoWon('scissors', computerHand.name);
        print('You chose scissors and the computer chose ${computerHand.name}');
        break;
      case 'q':
        print('You chose to quit. Thanks for playing!');
        break;
      default:
        print('Invalid choice, please try again.');
        break;
    } // switch

    // if the user chose to quit, break out of the loop
    if (userChoice.toLowerCase() == 'q') {
      break;
    } // if break on quit
  } //while loop
} // main
