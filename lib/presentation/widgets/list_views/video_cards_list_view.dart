import 'package:flutnew/models/video_cards_list_data_model.dart';
import 'package:flutnew/presentation/widgets/cards/video_info_card.dart';
import 'package:flutnew/presentation/widgets/headers/custom_header.dart';
import 'package:flutter/material.dart';

class VideoCardsListView extends StatelessWidget {
  final VideoListData videoListData;
  final String headerTitle;

  const VideoCardsListView({
    super.key,
    required this.videoListData,
    required this.headerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SizedBox(height: 28),
          CustomHeader(heading: headerTitle),
          const SizedBox(height: 18),
          SizedBox(
            height: 180, // Adjust the height for horizontal list
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: videoListData.titles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: VideoInfoCard(
                    heading: videoListData.titles[index],
                    time: '20 min',
                    imageUrl: videoListData
                        .images[index], // Replace with actual image URL
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
