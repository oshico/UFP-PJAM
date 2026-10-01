abstract class Person {
  //NOTE: properties
  // id -> public variable can be acessed from anywhere
  // _id -> private variable needs specific methods to be acessed
  // variables can be mandatory or option using the ? charecter after the type
  int _id;
  String _firstName, _lastName;
  String? _middleName;
  int _age;
  double _height;

  //NOTE: constructors
  // we can only have 1 constructor without a name
  Person(this._id, this._firstName, this._lastName, this._age, this._height);

  //NOTE: object acess methods
  // set functionName -> set a property value
  // get fucntionName -> retrieve a property value
  // the function type must match the property type, this includes optional properties
  // we can force a optinal property into a mandatory get by using the ! operator after the property
  // its also possible to create custom getter/setter fucntions for combining params
  int get id => _id;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String? get middleName => _middleName;
  String get middleNameUnsafe => _middleName!;
  int get age => _age;
  double get height => _height;

  String getName() {
    return '$_firstName,$_lastName';
  }

  set id(int id) => _id;
  set firstName(String firstName) => _firstName;
  set lastName(String lastName) => _lastName;
  set middleName(String middleName) => _middleName;
  set age(int age) => _age;
  set height(double height) => _height;
}
