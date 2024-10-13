import 'package:flutnew/presentation/views/landing/landing_views/dashboard_page_view.dart';
import 'package:flutnew/presentation/views/landing/landing_views/explore_page_view.dart';
import 'package:flutnew/presentation/widgets/buttons/fab.dart';
import 'package:flutter/material.dart';

class LandingPageView extends StatefulWidget {
  const LandingPageView({super.key});

  @override
  LandingPageViewState createState() => LandingPageViewState();
}

class LandingPageViewState extends State<LandingPageView> {
  // Current selected index of the BottomNavigationBar
  int _currentIndex = 0;

  // List of screens for the BottomNavigationBar
  final List<Widget> _screens = [
    const ExploreScreen(),
    const DashboardScreen(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: const Fab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: IndexedStack(
        index: _currentIndex, // Maintain the state of each screen
        children: _screens,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, -2), // Shadow only on the top edge
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 14, // Adjust font size if necessary
            unselectedFontSize: 12, // Adjust font size if necessary
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 34,
                  // Increased icon size
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view_rounded,
                  size: 34, // Increased icon size
                ),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.accessibility_new,
                  size: 34, // Increased icon size
                ),
                label: 'Activity',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  size: 34, // Increased icon size
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
