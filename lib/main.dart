import 'package:flutter/material.dart';

import 'presentation/views/auth/login_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff9b50a3), // Primary color
          primary: const Color(0xff8944ab), // Manually set primary color
          secondary: const Color(0x2ABD50B1),
          // tertiaryFixedDim: const Color(0xffdadada),

          // Secondary color
        ),
        // Define the default font family.
        fontFamily:
            'Nexa', // Set a global font. Replace 'Roboto' with your desired font.

        // Define the default `TextTheme`. You can specify styles for different text types here.
        textTheme: const TextTheme(
            // bodyLarge: TextStyle(
            //   fontSize: 32.0,
            //   fontWeight: FontWeight.bold,
            // ),
            // bodyMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
            // bodySmall: TextStyle(
            //   fontSize: 11.0,
            // ),
            ),

        useMaterial3: true,
      ),
      // home: const LandingPageView(),
      home: LoginPageView(),
    );
  }
}
