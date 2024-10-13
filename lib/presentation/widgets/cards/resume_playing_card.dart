import 'package:flutnew/presentation/widgets/buttons/animated_play_button.dart';
import 'package:flutter/material.dart';

class ResumePlayingCard extends StatefulWidget {
  const ResumePlayingCard({super.key});

  @override
  ResumePlayingCardState createState() => ResumePlayingCardState();
}

class ResumePlayingCardState extends State<ResumePlayingCard>
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 185,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  'https://static.tnn.in/thumb/msid-110059225,thumbsize-66078,width-1280,height-720,resizemode-75/110059225.jpg?quality=100',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Align(
              alignment: Alignment
                  .center, // Align to the center or any desired position
              child: SizedBox(
                height: 50,
                width: 50,
                child: AnimatedPlayButton(
                  onPressed: () {},
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Grip, Stance and Swing',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'only 7 mins remaining',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          return LinearProgressIndicator(
                            color: Theme.of(context).primaryColor,
                            backgroundColor: const Color(0xffdadada),
                            value: _animation.value,
                            borderRadius: BorderRadius.circular(10),
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
