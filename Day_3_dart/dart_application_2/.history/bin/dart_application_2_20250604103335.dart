void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];

  print('Length of the list is : ${numbers.length}');

  numbers.add(8); // Adding an element to the list
  print('List after adding an element: $numbers');

  numbers.addAll([9, 10, 11]); // Adding multiple elements to the list
  print('List after adding elements: $numbers');

  numbers.remove(5); // Removing an element from the list
  print('List after removing an element: $numbers');

  numbers.removeAt(0); // Removing an element at a specific index
  print('List after removing an element at index 0: $numbers');

  numbers.shuffle(); // Shuffling the list
  print('List after shuffling: $numbers');

  numbers.removeWhere(
      (test) => test == 3); // Removing elements based on a condition
  print('List after removing elements where condition is true: $numbers');

  print(
      'List contains 0: ${numbers.contains(0)}'); // Checking if an element exists

  numbers.insert(0, 0); // Inserting an element at a specific index
  print('List after inserting an element at index 0: $numbers');

  print(
      'First element of the list: ${numbers.first}\nLast element of the list: ${numbers.last}');

  print('The list with its indexes: ${numbers.asMap()}');

  numbers.clear(); // Clearing the list
  print('List after clearing: $numbers');

  // Sorting the list
  numbers = [5, 3, 8, 1, 2];
  numbers.sort(); // Sorting in ascending order
  print('List after sorting in ascending order: $numbers');
  numbers.sort((a, b) => b.compareTo(a)); // Sorting in descending order
  print('List after sorting in descending order: $numbers');
}
