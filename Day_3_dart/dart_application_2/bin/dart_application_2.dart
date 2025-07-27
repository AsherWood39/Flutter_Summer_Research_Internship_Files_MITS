class Student {
  final int? roll;
  final String? name;
  final int? totalMarks;

  Student({required this.roll, required this.name, required this.totalMarks});
}

void main() {
  List<Student> students = [];
  Student s1 = Student(roll: 1, name: "Alice", totalMarks: 85);
  students.add(s1);
  Student s2 = Student(roll: 2, name: "Bob", totalMarks: 90);
  Student s3 = Student(roll: 3, name: "Charlie", totalMarks: 78);
  Student s4 = Student(roll: 4, name: "David", totalMarks: 88);
  students.addAll([s2, s3, s4]);

  for (var doc in students) {
    print(
        "[Roll: ${doc.roll}, Name: ${doc.name}, Total Marks: ${doc.totalMarks}]");
  }
}
