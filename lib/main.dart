import 'package:flutter/material.dart';
import 'package:food_del_web_responsive/pages/Dasboard_pages.dart';
import 'package:food_del_web_responsive/pages/contact_pages.dart';
import 'package:food_del_web_responsive/pages/home_pages.dart';
import 'package:food_del_web_responsive/pages/service_pages.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DasboardPages(),
      routes: {
        '/dashboard': (context) => DasboardPages(),
        '/home': (context) => HomePages(),
        '/contact': (context) => ContactPages(),
        '/service': (context) => ServicePages()
      },
    );
  }
}
