import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync() ?? "Guest";

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync() ?? "0");

  if (age >= 18) {
    print("Hi $name, you are an adult.");
  } else {
    print("Hi $name, you are a minor.");
  }
}