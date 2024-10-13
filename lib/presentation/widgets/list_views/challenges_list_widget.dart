import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutnew/presentation/widgets/cards/challenges_card.dart';
import 'package:flutnew/presentation/widgets/headers/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ChallengesListWidget extends StatefulWidget {
  const ChallengesListWidget({super.key});

  @override
  ChallengesListWidgetState createState() => ChallengesListWidgetState();
}

class ChallengesListWidgetState extends State<ChallengesListWidget> {
  int _currentIndex = 0;

  // Dummy country list for demonstration
  List<String> countryList = [
    "PAKISTAN",
    "INDIA",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeader(heading: 'Challenges'),
        const SizedBox(height: 8),

        CarouselSlider.builder(
          itemCount: countryList.length,
          itemBuilder: (context, _, index) {
            return const ChallengeCard(); // Your custom widget
          },
          options: CarouselOptions(
            height: 270,
            initialPage: 0, // Start from first element
            enableInfiniteScroll: false,
            enlargeCenterPage: false, // Keep the size of the items consistent
            viewportFraction: 1.0, // Only one item is visible at a time
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index; // Track the current index
              });
            },
          ),
        ),

        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('345 people are actively participationg',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
            Row(children: [
              Text('4.6',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.star, color: Colors.yellow, size: 20),
            ])
          ],
        ),

        const SizedBox(height: 15),
        // Dots Indicator
        Center(
          child: AnimatedSmoothIndicator(
            activeIndex: _currentIndex,
            count: countryList.length,
            effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Color(0xff582b6e), // Customize active dot color
              dotColor: Color(0xffdadada), // Customize inactive dots color
            ),
          ),
        ),
      ],
    );
  }
}
