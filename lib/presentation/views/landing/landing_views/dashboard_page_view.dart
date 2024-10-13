import 'package:flutnew/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:flutnew/presentation/widgets/cards/achievement_card.dart';
import 'package:flutnew/presentation/widgets/headers/custom_header.dart';
import 'package:flutnew/presentation/widgets/list_views/challenges_list_widget.dart';
import 'package:flutnew/presentation/widgets/list_views/resume_playing_list_widget.dart';
import 'package:flutnew/presentation/widgets/progress/progress_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: CustomScrollView(
          slivers: [
            // App Bar
            CustomAppBar(
              leftChild: SizedBox(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).primaryColor,
                          size: 30,
                        )),
                    const SizedBox(width: 15),
                    Icon(
                      Icons.share_outlined,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                    const SizedBox(width: 15),
                    Icon(
                      Icons.favorite_border,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),

                  // Greeting and Stats
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Text(
                      'Good morning, Pam!',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),

                  // ProgressView and widget for user's activity track and overall progress like kms,calories etc
                  ProgressWidget(),
                ],
              ),
            ),

            // Seen videos listview
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const ResumePlayingListWidget(),
                  ],
                ),
              ),
            ),

            // Available Challenges listview
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const ChallengesListWidget(),
                  ],
                ),
              ),
            ),

            // Achievtements Section
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomHeader(heading: 'Achievements'),
                    const SizedBox(height: 8),
                    const AchivementCard(),
                    const SizedBox(
                      height: 10,
                    ),
                    const AchivementCard(),
                    const SizedBox(
                      height: 10,
                    ),
                    const AchivementCard(),
                  ],
                ),
              ),
            ),
            // Greeting Section
          ],
        ),
      ),
    );
  }
}
