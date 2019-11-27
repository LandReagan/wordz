import 'package:wordz/objects/FamilyRole.dart';
import 'package:wordz/tests/dummies.dart';

import 'package:wordz/objects/Family.dart';

/// Interface for Firestore
class Database {

  Family getFamily() {
    return dummyFamily1;
  }

  FAMILY_ROLE get userRole => FAMILY_ROLE.PARENT;
}