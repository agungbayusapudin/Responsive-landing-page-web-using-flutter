import 'package:flutter/material.dart';

class Resopsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Resopsive(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1280 &&
      MediaQuery.sizeOf(context).width >= 768;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width > 1280;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    if (size.width > 1280) {
      return mobile;
    } else if (size.width > 904) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
