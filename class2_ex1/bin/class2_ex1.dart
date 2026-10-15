import 'package:class2_ex1/exceptions/age_exception.dart';
import 'package:class2_ex1/exceptions/preexisting_item_exception.dart';
import 'package:class2_ex1/data/students.dart';
import 'package:class2_ex1/models/student.dart';

void main(List<String> arguments) {
  Students students = Students();

  try {
    students.add(Student(1001, 'Manuel', 13, DateTime(2000, 10, 23)));
  } on AgeException catch (e) {
    print(e.errorMessage());
  } on PreexistingItemException catch (e, f) {
    print(e.errorMessage());
    print(f);
  } on Exception {
    print("it explodes");
  } finally {
    printStudents(students.list);
  }
}

void printStudents(List<Students> students) {
  for (var s in students) {
    print(s);
  }
}
