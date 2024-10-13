import 'package:flutnew/presentation/widgets/buttons/primary_button.dart';
import 'package:flutnew/presentation/widgets/chips/achievement_status_chip.dart';
import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: const DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1524594152303-9fd13543fe6e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8enVtYmF8ZW58MHx8MHx8fDA%3D',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(0.5), // Black shadow with reduced opacity
                    spreadRadius: 2, // How much the shadow spreads
                    blurRadius: 40, // How blurry the shadow looks
                    offset: const Offset(
                        0, 150), // Shift shadow downwards (x:0, y:8)
                  ),
                ],
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 12.0, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Challenge 1',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                  Text(
                    'March 01 to March 25',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: ActiveStatusChip(),
            ),
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 12.0, bottom: 10),
              child: PrimaryButton(text: 'Join'),
            ),
          ),
        ],
      ),
    );
  }
}
