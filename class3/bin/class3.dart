import 'package:class3/models/programer.dart';

void main(List<String> arguments) {
  Programer s1 = Programer(2, "Nuno", "Silva", 22, 164, 1500);
  s1.setSalaryCombined(1500, 1600);

  print('''
  How much does ${s1.getName()} make?

  \o/

  He makes ${s1.salary}!
  ''');
}

//NOTE: Function params definitions
// items outside of the {} need to be called in the correct order and are mandatory
// items inside of the {} can be called in random order and are not mandatory
// mandatory -> stays ouside of {}
// optional -> stays inside of {} and needs a fallback value
// optional nullable -> stays inside of {} and needs ? in the type difinition
void test(int arg1, {int arg2 = 0, int? arg3, required int arg4}) {}
