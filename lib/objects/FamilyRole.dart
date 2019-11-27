enum FAMILY_ROLE {
  PARENT,
  KID
}

String familyRoleToString(FAMILY_ROLE role) {
  switch (role) {
    case FAMILY_ROLE.PARENT:
      return 'PARENT';
    case FAMILY_ROLE.KID:
      return 'KID';
  }
  return null; // <= cannot be reached.
}