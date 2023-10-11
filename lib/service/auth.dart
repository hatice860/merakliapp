import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<User?> SignIn(String email, String password) async {
    var user = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  SignOut() async {
    return await _firebaseAuth.signOut();
  }

  Future<User?> createPerson(
      String email, String password) async {
    var user = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password,);
    await _firebaseFirestore
        .collection("Person")
        .doc(user.user!.uid)
        .set({'email': email});

    return user.user;
    
  }
}
