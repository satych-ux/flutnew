import 'package:flutnew/presentation/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class JoolaProductBanner extends StatelessWidget {
  const JoolaProductBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: const DecorationImage(
          image: NetworkImage(
            'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86am9vbGE/bdd7b5e1-ee04-5c30-a26a-e347a6032c57',
          ),
          fit: BoxFit.fill,
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
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(
                        'https://joola.ca/wp-content/uploads/2021/03/JOOLA2020_logo-horiz_FINAL-white.png',
                        height: 40,
                        width: 100,
                      ),
                      const SizedBox(
                        width: 170,
                        child: Text(
                          'NEXT GENERATION EQUIPMENT',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const PrimaryButton(
                    text: 'Explore products',
                    fontSize: 15,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
