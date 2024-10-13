import 'package:flutter/material.dart';

class Fab extends StatelessWidget {
  const Fab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.purple,
      shape: const CircleBorder(),
      child: const Icon(
        Icons.add_rounded,
        size: 55,
        color: Colors.white,
      ),
    );
  }
}
