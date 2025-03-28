import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_flutter_firebase/SplashScreen.dart';
import 'package:login_signup_flutter_firebase/signup.dart';

import 'firebase_options.dart';

void main() async{
 
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
   WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}