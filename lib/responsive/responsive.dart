import 'package:flutter/material.dart';
import 'package:responsive_design/responsive/dimentions.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const ResponsiveLayout(
      {super.key, required this.mobileBody, required this.desktopBody});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <mobileWidth) {
        return widget.mobileBody;
      } else {
        return widget.desktopBody;
      }
    });
  }
}
