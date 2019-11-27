import 'package:flutter/material.dart';
import 'package:wordz/constants/strings.dart';
import 'package:wordz/database/Database.dart';
import 'package:wordz/objects/Family.dart';
import 'package:wordz/objects/FamilyRole.dart';
import 'package:wordz/widgets/FamilyWidget.dart';

class HomePage extends StatelessWidget {

  final Database _database = Database();

  Family get family => _database.getFamily();
  FAMILY_ROLE get role => _database.userRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WORDZ_TITLE_STRING),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: FamilyWidget(family, role),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}