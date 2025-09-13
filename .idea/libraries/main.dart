// Module 5 Assignment - Dart OOP

// ---------- Problem 1 ----------
class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    double discountAmount = (price * discountPercent) / 100;
    return price - discountAmount;
  }

  void display() {
    print("Title: $title, Author: $author, Price: $price");
  }
}

// ---------- Problem 2 ----------
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  void display() {
    print("Manager: $name, Salary: $salary, Department: $department");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void display() {
    print("Developer: $name, Salary: $salary, Language: $programmingLanguage");
  }
}

// ---------- Problem 3 ----------
abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running.");
  }

  @override
  void turnOff() {
    print("Fan is switched off.");
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on.");
  }

  @override
  void turnOff() {
    print("Light is switched off.");
  }
}

// ---------- Main ----------
void main() {
  // Problem 1
  Book book1 = Book("Flutter Basics", "Alice", 500);
  Book book2 = Book("OOP with Dart", "Bob", 700);

  book1.display();
  print("Discounted Price: ${book1.discountedPrice(10)}");

  book2.display();
  print("Discounted Price: ${book2.discountedPrice(15)}");

  // Problem 2
  Manager m1 = Manager("Alice", 80000, "HR");
  Developer d1 = Developer("Bob", 90000, "Dart/Flutter");

  m1.display();
  d1.display();

  // Problem 3
  Fan fan = Fan();
  Light light = Light();

  fan.turnOn();
  fan.turnOff();

  light.turnOn();
  light.turnOff();
}
