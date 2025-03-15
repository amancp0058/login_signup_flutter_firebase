import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_flutter_firebase/forgot.dart';
import 'package:login_signup_flutter_firebase/services/authservice.dart';
import 'package:login_signup_flutter_firebase/signup.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              padding: const EdgeInsets.all(8.0),
              child: Lottie.asset(
                "assets/Animation - 1741976338325.json",
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.grey),
                  hintText: "password",
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {signin(email: emailController.text,password: passwordController.text, context: context);
            },
              child: Text("Login", style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors.white,
                minimumSize: Size(double.infinity, 45),
              ),
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgot()),);}, child: Text("Forgotten password?",style: TextStyle(color: Colors.black),)),
            SizedBox(height: 10),
            Text("dont have an account"),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                }, child: Text("Sign up")),
          ],
        ),
      ),
    );
  }
}