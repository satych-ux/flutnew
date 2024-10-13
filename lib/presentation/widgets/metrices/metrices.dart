import 'package:flutter/material.dart';

class Metrices extends StatelessWidget {
  final String value;
  final String metriceName;
  final IconData icon;
  final Color iconColor;

  const Metrices(
      {super.key,
      required this.value,
      required this.metriceName,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              value.toString(),
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
                color: Color(0xff202124),
              ),
            ),
            Text(
              metriceName,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xff6f4782),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
