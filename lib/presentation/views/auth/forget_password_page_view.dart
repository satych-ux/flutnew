import 'package:flutnew/presentation/views/landing/landing_page_view.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/auth_primary_button.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/primary_text_button.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/primary_textformfiled.dart';
import 'package:flutnew/presentation/widgets/auth/common_wrapper/bg_image_container.dart';
import 'package:flutnew/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ForgetPasswordPageView extends StatelessWidget {
  ForgetPasswordPageView({super.key});
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BackgroundImageContainer(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 235,
              bottom: 15,
            ),
            child: Text(
              'Reset password',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: 358,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.kSamiDarkColor.withOpacity(0.4),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.kSamiDarkColor.withOpacity(0.5),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    PrimaryTextFormField(
                      hintText: 'Email',
                      controller: emailController,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      width: 326,
                      height: 48,
                      fillColor: AppColor.kLightAccentColor,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AuthPrimaryButton(
                      onTap: () {
                        if (emailController.text.isNotEmpty &&
                            emailController.text == 'satyam@gmail.com') {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const LandingPageView()));
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const LandingPageView()),
                          // );
                        }
                      },
                      borderRadius: 8,
                      fontSize: 14,
                      height: 48,
                      width: 326,
                      text: 'Send link',
                      textColor: AppColor.kWhiteColor,
                      bgColor: AppColor.kPrimary,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PrimaryTextButton(
                      title: 'Go back !',
                      fontSize: 14,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      textColor: AppColor.kPrimary,
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
