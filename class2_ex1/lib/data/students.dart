import 'package:class2_ex1/exceptions/age_exception.dart';
import 'package:class2_ex1/exceptions/preexisting_item_exception.dart';
import 'package:class2_ex1/models/student.dart';

class Students {
  List<Student> _students = [];

  List<Student> get list => _students;

  void add(Student student) {
    if ((DateTime.now().difference(student.birthday).inDays / 365) < 18) {
      throw AgeException('data/students.dart');
    }

    if (_students.any((s) => s.number == student.number)) {
      throw PreexistingItemException(
        'data/students[_students list]',
        student.number.toString(),
      );
    }

    _students.add(student);
  }
}
