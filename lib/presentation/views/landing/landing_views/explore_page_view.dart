import 'package:flutnew/models/video_cards_list_data_model.dart';
import 'package:flutnew/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:flutnew/presentation/widgets/banner/joola_product_banner.dart';
import 'package:flutnew/presentation/widgets/buttons/outlined_button.dart';
import 'package:flutnew/presentation/widgets/cards/featured_card.dart';
import 'package:flutnew/presentation/widgets/headers/custom_header.dart';
import 'package:flutnew/presentation/widgets/list_views/video_cards_list_view.dart';
import 'package:flutnew/presentation/widgets/text_fields/auto_suggest_text_field.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 12, right: 12),
        child: CustomScrollView(
          slivers: [
            CustomAppBar(
              leftChild: SizedBox(
                child: Icon(
                  Icons.history_toggle_off_rounded,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
              ),
            ),

            // Sliver for search bar
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Expanded(
                  child: AutoSuggestTextField(),
                ),
              ),
            ),

            // Sliver for tags section
            const SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  CustomOutlinedButton.withoutBgColor(
                    text: 'New',
                    icon: Icons.star_border_purple500,
                  ),
                  SizedBox(width: 8),
                  CustomOutlinedButton.withoutBgColor(
                    text: 'Favorites',
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(width: 8),
                  CustomOutlinedButton.withoutBgColor(
                    text: 'Yoga',
                    icon: Icons.accessibility_new,
                  ),
                  SizedBox(width: 8),
                  CustomOutlinedButton.withoutBgColor(
                    text: 'Zumba',
                    icon: Icons.fitness_center,
                  ),
                ]),
              ),
            ),

            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: JoolaProductBanner(),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const CustomHeader(heading: 'Featured'),
                    const SizedBox(height: 18),
                    SizedBox(
                      height: 270,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          FeaturedCard(
                            imageUrl:
                                'https://img.freepik.com/premium-photo/dock-with-full-moon-full-moon-background_198067-1003747.jpg',
                          ),
                          SizedBox(width: 20),
                          FeaturedCard(
                            imageUrl:
                                'https://media.istockphoto.com/id/610989366/photo/silhouette-of-love-guy-and-girl-against-sunset.jpg?s=612x612&w=0&k=20&c=0j3XZ0VjpzaLPYYufz-J3Ax-V9NPeN0k6Tc9PBINYs4=',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Sliver for section: Begin your Pickleball journey (Horizontal Scroll)

            const VideoCardsListView(
              headerTitle: 'Begin you Pickleball journey',
              videoListData: VideoListData(
                titles: [
                  'Grip, Stance, and Swing',
                  'Strength and Conditioning',
                ],
                images: [
                  'https://static.wixstatic.com/media/5d24b1_a9a8d43155774258b5277df164d61240~mv2.jpg/v1/fill/w_568,h_426,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/5d24b1_a9a8d43155774258b5277df164d61240~mv2.jpg',
                  'https://www.paddletek.com/cdn/shop/articles/drills.jpg?v=1677530402'
                ],
              ),
            ),

            const VideoCardsListView(
              headerTitle: 'Your picks',
              videoListData: VideoListData(
                titles: [
                  'Getting Better at the Game',
                  'Getting Stronger',
                ],
                images: [
                  'https://www.science.org/do/10.1126/science.adi2054/abs/_20230410_on_robot_table_tennis.jpg',
                  'https://www.allabouttabletennis.com/images/xwarm-up-exercises.jpg.pagespeed.ic.RHndCVTabB.jpg'
                ],
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
