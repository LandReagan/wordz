import 'package:wordz/objects/Family.dart';
import 'package:wordz/objects/FamilyMember.dart';
import 'package:wordz/objects/FamilyRole.dart';

FamilyMember dummyDad = FamilyMember('Dad', FAMILY_ROLE.PARENT);
FamilyMember dummyMom = FamilyMember('Mom', FAMILY_ROLE.PARENT);
FamilyMember dummyKid1 = FamilyMember('Kid1', FAMILY_ROLE.KID);
FamilyMember dummyKid2 = FamilyMember('Kid2', FAMILY_ROLE.KID);
FamilyMember dummyKid3 = FamilyMember('Kid3', FAMILY_ROLE.KID);

Family dummyFamily1 = Family(
    name: "DummyTribe",
    members: [dummyDad, dummyMom, dummyKid1, dummyKid2, dummyKid3],
);