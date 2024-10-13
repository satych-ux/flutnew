import 'package:flutnew/presentation/widgets/buttons/outlined_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget leftChild;
  const CustomAppBar({super.key, required this.leftChild});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leftChild,
            CustomOutlinedButton(
              icon: Icons.card_giftcard_outlined,
              text: 'Rewards',
              bgColor: const Color(0xffe7daee).withOpacity(0.4),
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
