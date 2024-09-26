import 'package:flutter/material.dart';

class ServicePages extends StatefulWidget {
  const ServicePages({super.key});

  @override
  State<ServicePages> createState() => _ServicePagesState();
}

class _ServicePagesState extends State<ServicePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Service'),
      ),
    );
  }
}
