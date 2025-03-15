import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_flutter_firebase/services/authservice.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Center(
          child: Text(
            "SignUp",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
          ),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 155),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.blueGrey,
                          ),
                          hintText: "Username",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 231, 204),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),

                    Padding(padding: const EdgeInsets.only(bottom: 20)),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail, color: Colors.blueGrey),
                        hintText: "email",
                        filled: true,
                        fillColor: const Color.fromARGB(255, 240, 231, 204),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        controller: phonenoController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone_android_outlined,
                            color: Colors.blueGrey,
                          ),
                          hintText: "phone no.",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 231, 204),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock, color: Colors.blueGrey),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.blueGrey,
                          ),
                          hintText: "password",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 231, 204),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        obscureText: true,
                        controller: confirmpassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock, color: Colors.blueGrey),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.blueGrey,
                          ),
                          hintText: "confirmpassword",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 231, 204),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        signup(
                          username: usernameController.text,
                          email: emailController.text,
                          phoneno: phonenoController.text,
                          password: passwordController.text,
                          confirmpassword: confirmpassword.text,
                          context: context,
                        );
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        minimumSize: Size(double.infinity, 45),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 35,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/IMG_9231.JPG"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
