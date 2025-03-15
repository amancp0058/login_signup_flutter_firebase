import 'package:flutter/material.dart';
import 'package:login_signup_flutter_firebase/services/authservice.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.cyan],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
        Padding(
          padding: const EdgeInsets.only(top:250 ),
          child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                    hintText: "email",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
        ),
              SizedBox(height: 20,),
               ElevatedButton(onPressed: (){resetpassword(Email: emailController.text, context: context);}, child: Text("Send",style: TextStyle(color: Colors.black),))
          ]
        ),
      ),
      );
  }
}