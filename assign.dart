import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Implement the interface with a class
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

// Define a superclass with a method to be overridden
class Vehicle {
  void drive() {
    print('Vehicle is being driven.');
  }
}

// Implement a subclass that overrides a method
class Car extends Vehicle {
  @override
  void drive() {
    print('Car is being driven.');
  }
}

// Define a class that initializes data from a file
class Person {
  late String name;
  late int age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  factory Person.fromFile(String filePath) {
    final file = File(filePath);
    final lines = file.readAsLinesSync();
    final name = lines[0];
    final age = int.parse(lines[1]);
    return Person(name, age);
  }
}

void main() {
  // Create an instance of a class initialized with data from a file
  final person = Person.fromFile('person_data.txt');
  print('Name: ${person.name}, Age: ${person.age}');

  // Demonstrate the use of a loop
  for (int i = 0; i < 3; i++) {
    print('Loop iteration $i');
  }

  // Demonstrate inheritance and method overriding
  final vehicle = Vehicle();
  vehicle.drive(); // Output: Vehicle is being driven.

  final car = Car();
  car.drive(); // Output: Car is being driven.

  // Demonstrate implementation of an interface
  final dog = Dog();
  dog.makeSound(); // Output: Woof!
}
