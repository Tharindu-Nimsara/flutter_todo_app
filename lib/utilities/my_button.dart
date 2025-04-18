import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white, // ✅ this ensures text stays white
          fontWeight: FontWeight.bold, // optional: makes it look nicer
        ),
      ),
    );
  }
}
