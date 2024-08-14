import 'package:contact/screen/contact_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ContactScreen.routeName:(_)=>ContactScreen(),
      },
      initialRoute: ContactScreen.routeName,
    );
  }
}
