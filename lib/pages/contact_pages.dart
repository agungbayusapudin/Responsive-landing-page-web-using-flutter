import 'package:flutter/material.dart';

class ContactPages extends StatefulWidget {
  const ContactPages({super.key});

  @override
  State<ContactPages> createState() => _ContactPagesState();
}

class _ContactPagesState extends State<ContactPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('contact'),
      ),
    );
  }
}
