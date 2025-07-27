void main() {
  // Q7. Create a list of 5 integers and print the list.
  List<int> num = [10, 20, 30, 40, 50];
  print("List of integers: $num");

  // Q8. Add an element to the end of a list and print the updated list.
  num.add(60);
  print("\nList after adding an element: $num");

  // Q9. Insert an element at a specific index in a list and display the result.
  num.insert(4, 35);
  print("\nList after inserting an element at a specific index: $num");

  // Q10. Remove an element from the list and print the updated list.
  num.remove(35);
  print("\nList after removing an element: $num");

  // Q11. Find the length of a list and display it.
  print("\nLength of the list: ${num.length}");

  // Q12. Access an element at a specific index in the list.
  print("\nElement at index 2: ${num[2]}");

  // Q13. Create a list of strings and sort it alphabetically, then print the sorted list.
  List<String> strList = ["a", "f", "s", "b", "c"];
  print("\nOriginal list of strings: $strList");
  strList.sort();
  print("Sorted list of strings: $strList");

  // Q14. Iterate through a list using a for loop and print each element.
  print("\nIterating through the list using a for loop:");
  for (var doc in num) {
    print(doc);
  }

  // Q15. Use a forEach method to print all elements of a list.
  print("\nUsing forEach to print all elements of the list:");
  num.forEach((element) => print(element));

  // Q16. Create a list of numbers and find the sum of all elements using a loop.
  num = [10, 20, 30, 40];
  int sum = 0;
  for (var element in num) {
    sum += element;
  }

  print("\nSum of all elements in the list: $sum");

  // Q17. Check if an element exists in a list using contains and print the result.
  print("\nChecking if 20 exists in the list: ${num.contains(20)}");

  // Q18. Reverse a list and print the reversed list.
  print("\nOriginal list: $num");
  num.reversed.toList();
  print("Reversed list: $num");
}
