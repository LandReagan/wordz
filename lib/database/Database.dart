import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:wordz/objects/FamilyRole.dart';
import 'package:wordz/tests/dummies.dart';
import 'package:wordz/objects/Family.dart';

/// Interface for Firestore
class Database {

  Family getFamily() {
    return dummyFamily1;
  }

  FAMILY_ROLE get userRole => FAMILY_ROLE.PARENT;

  // Tests

  void writeDummyFamily(Family dummyFamily) async {
    CollectionReference families = Firestore.instance.collection('families');
    await families.document('tribugagne').setData({
      'name': dummyFamily.name,
      
    });
  }

  void writeFirestoreTest() async {
    await Firestore.instance
        .collection("family")
        .document()
        .setData({'donnée': 36});
  }
}