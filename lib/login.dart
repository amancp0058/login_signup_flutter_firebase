import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient:LinearGradient(colors: [Colors.black, Colors.red],begin:Alignment.topCenter,end: Alignment.bottomCenter), ),
      child: Scaffold(
        backgroundColor:Colors.transparent,
        body: Column(
          children: [
              Padding(
                padding: const EdgeInsets.only(right: 225),
                child: Lottie.asset(
                  "assets/Animation - 1741841911722 (1).json",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Colors.grey),
                  hintText: "Username",
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, 
                  color: Colors.grey),
                  hintText: "*******",
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none) 
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: (){}, child: Text("Login",style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 247, 242, 179),minimumSize:Size(double.infinity,45)),
            ),
            SizedBox(height: 10),
            Text("dont have an account"),
            SizedBox(height:10),
            ElevatedButton(onPressed: (){}, child: Text("Sign up"))
          ],
        ),
      ),
    );
  }
}
