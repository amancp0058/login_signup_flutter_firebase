import 'package:flutter/material.dart';
import 'package:login_signup_flutter_firebase/login.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Container(
      alignment: Alignment.center,

      decoration: BoxDecoration(gradient:LinearGradient(colors: [ Colors.red,Colors.black,],begin:Alignment.topCenter,end: Alignment.bottomCenter),),
      child: Scaffold(
        backgroundColor:Colors.transparent,
        body: Column(
          children: [
              Padding(
                padding: const EdgeInsets.only(top: 400,right: 230),
                child: Lottie.asset(
                  "assets/Animation - 1741841911722 (1).json",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            SizedBox(height: 15),
            Center(child: ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>Login()));}, child: Text("get start"),)),
          ]
        ),
      ),
    );
  }
}