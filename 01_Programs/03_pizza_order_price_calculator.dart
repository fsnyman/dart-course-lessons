const pizzaPrices = <String, double>{
  'margherita': 5.5,
  'pepperoni': 7.5,
  'vegetarian': 6.5,
};
const order = ['margherita', 'funny thing'];
void main() {
  double billTotal = 0;
  for (var item in order) {
    for (var pizza in pizzaPrices.entries) {
      if (!pizzaPrices.containsKey(item)) {
        print('$item is not on the menu');
        break;
      } // if check if item is on menu
      else if (item == pizza.key) {
        billTotal = billTotal + pizza.value;
        print('Adding $item to the bill..');
      } // else the item is on the menu
      //else {
      //  print('Calculating...');
      //} // else
    } // price check for loop
  } // bill item for loop
  print('Your bill is: $billTotal');
} // main
