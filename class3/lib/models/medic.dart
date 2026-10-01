import 'package:class3/models/person.dart';

class Medic extends Person {
  String _category;
  double _salary;

  Medic(
    super._id,
    super._firstName,
    super._lastName,
    super._age,
    super._height,
    this._category,
    this._salary,
  );

  String get category => _category;
  set category(String category) => _category;

  double get salary => _salary;
  set salary(double salary) => _salary;
}
