import 'package:flutter/material.dart';
import 'package:login_signup_flutter_firebase/login.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,

      decoration: BoxDecoration(color: Colors.white
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(height: 250),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Lottie.asset(
                "assets/Animation - 1741976338325.json",
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text("get start"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
