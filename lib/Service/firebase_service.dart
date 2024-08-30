import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices{
  final auth =  FirebaseAuth.instance;
  createEmailOrPassword(email,password) async {
    final user = await auth.createUserWithEmailAndPassword(email: email, password: password);
    if(user.user != null){
      print("User email:- ${user.user!.email}");
    }
  }
}