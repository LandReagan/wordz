import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wordz/objects/FamilyMember.dart';
import 'package:wordz/objects/FamilyRole.dart';

class FamilyMemberWidget extends StatefulWidget {
  final FamilyMember _familyMember;
  final FAMILY_ROLE _role;

  FamilyMemberWidget(this._familyMember, this._role);

  _FamilyMemberWidgetState createState() => _FamilyMemberWidgetState();
}

class _FamilyMemberWidgetState extends State<FamilyMemberWidget> {
  void addOneWordz() {
    setState(() {
      widget._familyMember.incrementCounter();
    });
  }

  void removeOneWordz() {
    setState(() {
      widget._familyMember.decrementCounter();
    });
  }

  List<Widget> get _rowChildren {
    var children = <Widget>[];

    children.addAll([
      Expanded(
        child: Text(
          widget._familyMember.name,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.body2,
        ),
      ),
      Text(
        widget._familyMember.counter.toString(),
        style: Theme.of(context).textTheme.body2,
      ),
      IconButton(
        icon: Icon(
          Icons.add_circle_outline,
          color: Colors.red,
        ),
        onPressed: () {
          addOneWordz();
        },
      )
    ]);

    if (widget._role == FAMILY_ROLE.PARENT) {
      children.add(IconButton(
        icon: Icon(
          Icons.remove_circle_outline,
          color: Colors.green,
        ),
        onPressed: () {
          removeOneWordz();
        },
      ));
    }

    return children;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('(' + widget._familyMember.role + ')'),
      title: Row(
        children: _rowChildren,
      ),
    );
  }
}
