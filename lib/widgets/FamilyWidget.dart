import 'package:flutter/material.dart';
import 'package:wordz/objects/Family.dart';
import 'package:wordz/objects/FamilyRole.dart';

import 'FamilyMemberWidget.dart';

class FamilyWidget extends StatelessWidget {

  final Family _family;
  FAMILY_ROLE _role;

  FamilyWidget(this._family, this._role);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: _family.members.length,
      itemBuilder: (context, index) {
        return FamilyMemberWidget(_family.members[index], _role);
      }
    );
  }
}
