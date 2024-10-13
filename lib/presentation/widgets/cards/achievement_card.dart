import 'package:flutnew/presentation/widgets/chips/coins_chip.dart';
import 'package:flutter/material.dart';

class AchivementCard extends StatefulWidget {
  const AchivementCard({super.key});

  @override
  AchivementCardState createState() => AchivementCardState();
}

class AchivementCardState extends State<AchivementCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Duration of the animation
    );
    _animation = Tween<double>(begin: 0, end: 0.5).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffe7daee).withOpacity(0.6),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container
          Container(
            margin: const EdgeInsets.all(10),
            constraints: const BoxConstraints(
              minWidth: 110,
              maxWidth: 110, // Fixed width for the image
              minHeight: 100,
              maxHeight: double.infinity, // Adjust height to match content
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/011/301/314/non_2x/medal-icon-logo-illustration-medal-symbol-template-for-graphic-and-web-design-collection-free-vector.jpg',
                ),
                fit: BoxFit.cover, // Ensure the image covers its container
              ),
            ),
          ),
          // Expanded Column for Text and Progress
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Row with Text and Chip
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title and Subtitle Text Column
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Grip, Stance and Swing',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              'Walk 100,000 steps',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      // Chip Widget or Icon
                      CoinsChip(), // Custom widget or use Icon
                    ],
                  ),

                  // Spacer between Text and Progress Bar
                  const SizedBox(height: 8),

                  // Remaining Time and Progress Bar
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '86% ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: 'Completed ',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          return LinearProgressIndicator(
                            color: Theme.of(context).primaryColor,
                            backgroundColor: Colors.white,
                            value: _animation.value,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
