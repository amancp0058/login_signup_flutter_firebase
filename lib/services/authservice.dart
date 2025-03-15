import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> signup({
  required String username,
  required String email,
  required String phoneno,
  required String password,
  required String confirmpassword,
  required BuildContext context,
}) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    User? user = userCredential.user;
    await FirebaseFirestore.instance.collection('users').doc(user?.uid).set({
      "username": username,
      "email": email,
      "phone": phoneno,
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("User created successfully")));
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen(username:username,email:email),),
    //);
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
Future<void> signin({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
    .signInWithEmailAndPassword(email: email, password: password);
    

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("login successfull"))); 
    //Navigator.push(context, MaterialPageRoute(builder: (context)=>,),);
}
   catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
Future<void> resetpassword({required String Email,required BuildContext context})async{
  try {
   await FirebaseAuth.instance.sendPasswordResetEmail(email: Email);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("login successfull")));
    Navigator.pop(context);
}
   catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}