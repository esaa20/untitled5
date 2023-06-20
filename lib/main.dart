import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled5/sreens/home_screen.dart';

import 'firebase_options.dart';
import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Color(0xff091C27),
        cardColor: Color(0xffEE7F39),
        secondaryHeaderColor: Color(0xff4E7C97),
      ),
      home: HomeScreens(),
    );
  }
}
