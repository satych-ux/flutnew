import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final double fontSize;
  const PrimaryButton({super.key, required this.text, this.fontSize = 20});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
