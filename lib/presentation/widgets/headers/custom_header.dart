import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String heading;
  const CustomHeader({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                'See all',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Theme.of(context).primaryColor,
              size: 15,
            ),
          ],
        ),
      ],
    );
  }
}
