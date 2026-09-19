class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }
}

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  void displayDetails() {
    print('Manager Details:');
    print('Name: $name');
    print('Salary: \$${salary}');
    print('Department: $department');
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayDetails() {
    print('Developer Details:');
    print('Name: $name');
    print('Salary: \$${salary}');
    print('Programming Language: $programmingLanguage');
  }
}

abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print('Fan is now running');
  }

  @override
  void turnOff() {
    print('Fan is turned off');
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print('Light is switched on');
  }

  @override
  void turnOff() {
    print('Light is switched off');
  }
}

void main() {}
