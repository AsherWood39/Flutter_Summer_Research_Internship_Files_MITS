// Q19. Define a class Student with the following properties: rollNo (int), name (String), age (int), totalMarks (double) Create a list of Student objects with at least 3 students. Each student should have unique rollNo, name, age, and totalMarks. Implement the following operations on the list:
//    a. Add Operation: Add a new student to the list.
//    b. Edit Operation: Update the details of a student using their rollNo.
//    c. Delete Operation: Remove a student from the list using their rollNo.

class Student {
  int? rollNo;
  String? name;
  int? age;
  double? totalMarks;

  Student(
      {required this.rollNo,
      required this.name,
      required this.age,
      required this.totalMarks});
}

void main() {
  List<Student> list = [
    Student(rollNo: 1, name: "Alice", age: 20, totalMarks: 85.5),
    Student(rollNo: 2, name: "Bob", age: 22, totalMarks: 90.0),
    Student(rollNo: 3, name: "Charlie", age: 21, totalMarks: 78.5),
  ];

  print("Original List of Students:");
  int i = 1;
  for (var student in list) {
    print(
        "$i. Roll No: ${student.rollNo}, Name: ${student.name}, Age: ${student.age}, Total Marks: ${student.totalMarks}");
    i++;
  }

  // a.
  list.add(Student(rollNo: 4, name: "David", age: 23, totalMarks: 88.0));
  print("\nList after adding a new student:");
  i = 1;
  for (var student in list) {
    print(
        "$i. Roll No: ${student.rollNo}, Name: ${student.name}, Age: ${student.age}, Total Marks: ${student.totalMarks}");
    i++;
  }

  // b.
  list.forEach((student) {
    if (student.rollNo == 2) {
      student.name = "Robert"; // Updating name
      student.age = 23; // Updating age
      student.totalMarks = 92.0; // Updating total marks
    }
  });
  print('\nList after editing student with rollNo 2:');
  i = 1;
  for (var student in list) {
    print(
        "$i. Roll No: ${student.rollNo}, Name: ${student.name}, Age: ${student.age}, Total Marks: ${student.totalMarks}");
    i++;
  }

  // c.
  list.removeWhere((student) => student.rollNo == 1);
  print('\nList after deleting student with rollNo 1:');
  i = 1;
  for (var student in list) {
    print(
        "$i. Roll No: ${student.rollNo}, Name: ${student.name}, Age: ${student.age}, Total Marks: ${student.totalMarks}");
    i++;
  }
}
