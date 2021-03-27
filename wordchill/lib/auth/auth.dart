import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  FirebaseAuth get instance => FirebaseAuth.instance;

  User get currentUser => instance.currentUser;

  Future signInAnonymously() async {
    UserCredential userCredential = await instance.signInAnonymously();
    User user = userCredential.user;
    return user;
  }

  Future signOut() async {
    try {
      return await instance.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
