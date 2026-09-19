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
    print('Salary: Tk ${salary}');
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
    print('Salary: Tk ${salary}');
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

void main() {
  Book book1 = Book('1984', 'George Orwell', 250.0);
  Book book2 = Book('To Kill a Mockingbird', 'Harper Lee', 350.0);

  print('Book 1 Details:');
  print('Title: ${book1.title}');
  print('Author: ${book1.author}');
  print('Original Price: Tk ${book1.price}');
  print('Discounted Price (10%): Tk ${book1.discountedPrice(10)}');

  print('\nBook 2 Details:');
  print('Title: ${book2.title}');
  print('Author: ${book2.author}');
  print('Original Price: Tk ${book2.price}');
  print('Discounted Price (15%): Tk ${book2.discountedPrice(15)}');

  print('\n----------------------------------------\n');

  Manager manager = Manager('Alice Johnson', 85000.0, 'Engineering');
  manager.displayDetails();

  print('');

  Developer developer = Developer('Bob Smith', 65000.0, 'Dart');
  developer.displayDetails();

  print('\n----------------------------------------\n');

  Fan fan = Fan();
  fan.turnOn();
  fan.turnOff();

  print('');

  Light light = Light();
  light.turnOn();
  light.turnOff();
}
