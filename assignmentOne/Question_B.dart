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

void main() {
  Person person = Person("Rayhan", 22, "Notun Bazar,Badda", "Teacher");

  print("Name: ${person.getName}");
  print("Age: ${person.getAge}");
  print("Address: ${person.getAddress}");
  person.displayRole();
}
