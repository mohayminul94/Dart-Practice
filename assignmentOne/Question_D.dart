class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, this.teacherID, this.coursesTaught)
      : super(name, age);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (String course in coursesTaught) {
      print("- $course");
    }
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayRole() {
    print("Role: Person");
  }
}
