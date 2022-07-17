import 'package:flutter/material.dart';


class BackScaffold extends StatelessWidget {
  final Widget body;
  final Color color;
  final Color? iconColor;
  final double elevation;

 const BackScaffold({
    Key? key,
    required this.body,
    this.color = Colors.white,
    this.iconColor,
    this.elevation = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // iconTheme: iconColor != null ? IconThemeData(
        //   color: iconColor,
        // ) : null,
        centerTitle: true,
        elevation: elevation,
      ),
      body: body,
    );
  }
}
