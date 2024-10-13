import 'package:flutter/material.dart';

class CoinsChip extends StatelessWidget {
  const CoinsChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4.5),
        child: Row(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTARKYmBcxnGuxfLueCnZFXM10ELMfX52Z1CQ&s',
              height: 19,
              width: 19,
              // Green color for the dot
            ),
            const SizedBox(width: 8), // A little space between dot and text
            const Text(
              '24',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold, // Smaller text for 'Active'
                color: Colors.black, // Green color for the status text
              ),
            ),
          ],
        ));
  }
}
