import 'dart:io';

class Student {
  int number;
  String name;
  double grade;
  DateTime birthday;

  Student({
    required this.number,
    required this.name,
    required this.grade,
    required this.birthday,
  });

  @override
  String toString() => 'Name: $name --> grade: $grade';
}
