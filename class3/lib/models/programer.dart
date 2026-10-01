import 'person.dart';

class Programer extends Person {
  //NOTE: properties
  double _salary;

  //NOTE: constrocturs
  //we use super to override de original model values
  Programer(
    super._id,
    super._firstName,
    super._lastName,
    super._age,
    super._height,
    this._salary,
  );

  //NOTE: generating filler data for the model
  Programer.randomData() : this(1001, "Francisco", "Oliveira", 22, 171, 1500);

  //NOTE: property acess methods
  double get salary => _salary;

  set salary(double salary) => _salary;

  void setSalaryCombined(double salary1, double salary2, [double salary3 = 0]) {
    _salary = salary3 == 0
        ? ((salary1 + salary2) / 2)
        : ((salary1 + salary2 + salary3) / 3);
  }

  //NOTE: changing the original person model acess method logic
  @override
  // TODO: implement id
  int get id => super.id;
}
