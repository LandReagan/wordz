import 'package:wordz/objects/FamilyMember.dart';

class Family {
  String _name;
  List<FamilyMember> _members;

  Family({String name, List<FamilyMember> members}) :
        _name = name, _members = members;

  void addMember(FamilyMember member) => _members.add(member);

  List<FamilyMember> get members => _members;
  String get name => _name;

  @override
  String toString() {
    String headerString = '';
    String membersString = '';

    if (_name == null) {
      headerString = 'Family of ' + _members.length.toString() + ':\n';
    } else {
      headerString = _name + ', Family of ' + _members.length.toString() + ':\n';
    }

    for (var member in _members) {
      membersString += member.toString() + '\n';
    }
    return headerString + membersString;
  }
}