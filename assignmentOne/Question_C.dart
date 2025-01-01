abstract class Role {
  void displayRole();
}

class Person implements Role {
  final String name;
  final int age;
  final String address;
  final String role;

  Person(this.name, this.age, this.address, this.role);

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    print("Role: $role");
  }
}

class Student extends Person {
  final String studentID;
  final String grade;
  final List<double> courseScores;

  Student({
    required String name,
    required int age,
    required String address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(name, age, address, "Student");

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0; // Handle case for no scores
    double total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }
}

void main() {
  Student student = Student(
    name: "Rayhan",
    age: 22,
    address: "Notun Bazar,Badda",
    studentID: "124787",
    grade: "A+",
    courseScores: [85.5, 90.0, 88.0, 92.5],
  );

  print("Name: ${student.getName}");
  print("Age: ${student.getAge}");
  print("Address: ${student.getAddress}");
  print("Student ID: ${student.studentID}");
  print("Grade: ${student.grade}");
  student.displayRole();
  print("Average Score: ${student.calculateAverageScore()}");
}
