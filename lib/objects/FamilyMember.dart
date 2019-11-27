import 'package:wordz/objects/FamilyRole.dart';

class FamilyMember {

  final String _name;
  final FAMILY_ROLE _role;
  int _counter;

  FamilyMember(this._name, this._role, [this._counter = 0]);

  String get name => _name;
  String get role => familyRoleToString(_role);
  int get counter => _counter;

  void incrementCounter() => _counter++;
  void decrementCounter() => _counter > 0 ? _counter-- : null;

  @override
  String toString() => _name + ' ' + familyRoleToString(_role);
}