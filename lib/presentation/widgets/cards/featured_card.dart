import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final String imageUrl;
  const FeaturedCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
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
              padding: EdgeInsets.only(left: 15.0, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'A fresh start ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 17),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.audiotrack_sharp,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            ' 5 min ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 4,
                          ),
                          Text(
                            ' Mindfulness',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ],
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
