import 'package:flutter/material.dart';

class VideoInfoCard extends StatelessWidget {
  final String imageUrl;
  final String heading;
  final String time;
  const VideoInfoCard(
      {super.key,
      required this.imageUrl,
      required this.heading,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
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
                            color: Colors.black.withOpacity(
                                0.5), // Black shadow with reduced opacity
                            spreadRadius: 2, // How much the shadow spreads
                            blurRadius: 40, // How blurry the shadow looks
                            offset: const Offset(
                                0, 150), // Shift shadow downwards (x:0, y:8)
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
        const SizedBox(
          height: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: Colors.black),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.video_camera_back_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  ' 5 min ',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 4,
                ),
                Text(
                  ' Mindfulness',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
