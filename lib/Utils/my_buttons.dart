import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.black,
        elevation: 5,
        backgroundColor: Color.fromARGB(255, 34, 28, 88),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
