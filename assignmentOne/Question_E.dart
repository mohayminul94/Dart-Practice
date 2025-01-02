// Assuming the Person class is already defined
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(
      String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (String course in coursesTaught) {
      print("- \$course");
    }
  }
}

class Student extends Person {
  List<double> scores;

  Student(String name, int age, String address, this.scores)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  void displayAverageScore() {
    if (scores.isEmpty) {
      print("No scores available to calculate average.");
      return;
    }
    double average = scores.reduce((a, b) => a + b) / scores.length;
    print("Average Score: \$average");
  }
}

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayRole() {
    print("Role: Person");
  }
}

class StudentManagementSystem {
  static void main() {
    Student student = Student("John Doe", 20, "123 Main St", [90, 85, 82]);
    Teacher teacher = Teacher(
        "Mrs. Smith", 35, "456 Oak St", "T001", ["Math", "English", "Bangla"]);

    print("Student Information:\n");
    student.displayRole();
    print("Name: \${student.name}");
    print("Age: \${student.age}");
    print("Address: \${student.address}");
    student.displayAverageScore();

    print("\n");

    print("Teacher Information:\n");
    teacher.displayRole();
    print("Name: \${teacher.name}");
    print("Age: \${teacher.age}");
    print("Address: \${teacher.address}");
    teacher.displayCoursesTaught();
  }
}
