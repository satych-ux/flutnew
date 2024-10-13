// Add this for smooth dots indicator

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutnew/presentation/widgets/cards/resume_playing_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ResumePlayingListWidget extends StatefulWidget {
  const ResumePlayingListWidget({super.key});

  @override
  ResumePlayingListWidgetState createState() => ResumePlayingListWidgetState();
}

class ResumePlayingListWidgetState extends State<ResumePlayingListWidget> {
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
        const Text(
          'Resume playing',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),

        CarouselSlider.builder(
          itemCount: countryList.length,
          itemBuilder: (context, _, index) {
            return const ResumePlayingCard(); // Your custom widget
          },
          options: CarouselOptions(
            height: 120,
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
