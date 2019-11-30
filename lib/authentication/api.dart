import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'dart:async';

class AuthenticationAPI {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static GoogleSignIn _googleSignIn = GoogleSignIn();

  FirebaseUser firebaseUser;

  AuthenticationAPI(FirebaseUser user) {
    firebaseUser = user;
  }

  static Future<AuthenticationAPI> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleAuth.idToken, accessToken: googleAuth.accessToken
    );

    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;
    print(user.displayName + "is signed in with Google");
    
    return AuthenticationAPI(user);
  }
}