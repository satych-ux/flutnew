import 'package:flutter/material.dart';

class ActiveStatusChip extends StatelessWidget {
  const ActiveStatusChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffd3e8d8),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3.5),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.circle, // Dot icon
            color: Color(0xff248a3d), // Green color for the dot
            size: 10, // Dot size
          ),
          SizedBox(width: 4), // A little space between dot and text
          Text(
            'Active',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold, // Smaller text for 'Active'
              color: Color(0xff248a3d), // Green color for the status text
            ),
          ),
        ],
      ),
    );
  }
}
