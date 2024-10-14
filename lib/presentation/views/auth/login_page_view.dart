import 'package:flutnew/di_service_locator/service_locator.dart';
import 'package:flutnew/presentation/views/auth/signup_page_view.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/auth_primary_button.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/auth_secondary_button.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/custom_rich_text.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/divider_row.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/primary_text_button.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/primary_textformfiled.dart';
import 'package:flutnew/presentation/widgets/auth/common_wrapper/bg_image_container.dart';
import 'package:flutnew/utils/constants/app_colors.dart';
import 'package:flutnew/utils/constants/app_image_paths.dart';
import 'package:flutnew/utils/constants/named_routes.dart';
import 'package:flutter/material.dart';

class LoginPageView extends StatelessWidget {
  LoginPageView({super.key});
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
              'Log in',
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
                          navigationService.pushReplacementScreen(
                            NamedRoutes.landingPageRoute,
                          );
                        }
                      },
                      borderRadius: 8,
                      fontSize: 14,
                      height: 48,
                      width: 326,
                      text: 'Continue',
                      textColor: AppColor.kWhiteColor,
                      bgColor: AppColor.kPrimary,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PrimaryTextButton(
                      title: 'Forgot password?',
                      fontSize: 14,
                      onPressed: () {
                        navigationService
                            .pushScreen(NamedRoutes.forgotPasswordRoute);
                      },
                      textColor: AppColor.kPrimary,
                    ),
                    const SizedBox(height: 32),
                    const DividerRow(),
                    const SizedBox(height: 32),
                    AuthSecondaryButton(
                        onTap: () {},
                        borderRadius: 8,
                        fontSize: 14,
                        height: 48,
                        width: 326,
                        text: 'Login with Facebook',
                        textColor: AppColor.kBlackColor,
                        bgColor: AppColor.kLightAccentColor,
                        icons: AppImagePath.kLogoFacebook),
                    const SizedBox(height: 16),
                    AuthSecondaryButton(
                        onTap: () {},
                        borderRadius: 8,
                        fontSize: 14,
                        height: 48,
                        width: 326,
                        text: 'Login with Google',
                        textColor: AppColor.kBlackColor,
                        bgColor: AppColor.kLightAccentColor,
                        icons: AppImagePath.kGoogleLogo),
                    const SizedBox(
                      height: 16,
                    ),
                    AuthSecondaryButton(
                        onTap: () {},
                        borderRadius: 8,
                        fontSize: 14,
                        height: 48,
                        width: 326,
                        text: 'Login with Apple',
                        textColor: AppColor.kBlackColor,
                        bgColor: AppColor.kLightAccentColor,
                        icons: AppImagePath.kApple),
                    const SizedBox(height: 32),
                    CustomRichText(
                      subtitle: ' Sign up ',
                      title: 'Don’t have an account?',
                      subtitleTextStyle: TextStyle(
                        color: AppColor.kPrimary,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                      onTab: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPageView()),
                        );
                      },
                    )
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
