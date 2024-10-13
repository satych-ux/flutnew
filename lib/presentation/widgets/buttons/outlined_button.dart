import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Color? bgColor;
  final Color? iconColor;
  final String text;
  final IconData icon;
  const CustomOutlinedButton(
      {super.key,
      this.bgColor,
      required this.text,
      required this.iconColor,
      required this.icon});

  const CustomOutlinedButton.withoutBgColor(
      {super.key, required this.text, required this.icon})
      : bgColor = null,
        iconColor = null;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: null,
        style: OutlinedButton.styleFrom(
          backgroundColor: bgColor,
          side: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: Icon(
                icon,
                color: iconColor ?? Theme.of(context).primaryColor,
                size: 20,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ));
  }
}
