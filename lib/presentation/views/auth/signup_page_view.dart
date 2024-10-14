import 'package:flutnew/di_service_locator/service_locator.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/auth_primary_button.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/custom_rich_text.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/password_text_field.dart';
import 'package:flutnew/presentation/widgets/auth/common_component/primary_textformfiled.dart';
import 'package:flutnew/presentation/widgets/auth/common_wrapper/bg_image_container.dart';
import 'package:flutnew/utils/constants/app_colors.dart';
import 'package:flutnew/utils/constants/named_routes.dart';
import 'package:flutter/material.dart';

class SignupPageView extends StatelessWidget {
  SignupPageView({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BackgroundImageContainer(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 235, right: 240, bottom: 15, left: 32),
            child: Text(
              'Sign up',
              style: TextStyle(
                fontSize: 32,
                color: AppColor.kLightAccentColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
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
                    blurRadius: 10, // Adjust the blur radius
                  ),
                ],
              ),
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    CustomRichText(
                        title:
                            'Looks like you don’t have an account.                                        ',
                        subtitle: 'Let’s create a new account for you.',
                        subtitleTextStyle: TextStyle(
                          color: AppColor.kLightAccentColor,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                        onTab: () {}),
                    const SizedBox(
                      height: 24,
                    ),
                    PrimaryTextFormField(
                      hintText: 'Name',
                      controller: nameController,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      width: 326,
                      height: 48,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PrimaryTextFormField(
                      hintText: 'Email',
                      controller: emailController,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      width: 326,
                      height: 48,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PasswordTextField(
                      hintText: 'Password',
                      controller: passController,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      width: 326,
                      height: 48,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        style: TextStyle(
                          color: AppColor.kLightAccentColor,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          const TextSpan(
                            text: ' By selecting Create Account below,  ',
                          ),
                          const TextSpan(
                            text: ' I agree to        ',
                          ),
                          TextSpan(
                            text: '     Terms of Service',
                            style: TextStyle(
                              color: AppColor.kPrimary,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const TextSpan(
                            text: ' & ',
                          ),
                          TextSpan(
                            text: 'Privacy Policy  ',
                            style: TextStyle(
                              color: AppColor.kPrimary,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AuthPrimaryButton(
                      onTap: () {},
                      borderRadius: 8,
                      fontSize: 14,
                      height: 48,
                      width: 326,
                      text: 'Create Account',
                      textColor: AppColor.kWhiteColor,
                      bgColor: AppColor.kPrimary,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomRichText(
                      subtitle: ' Log in',
                      title: 'Already have an account?',
                      subtitleTextStyle: TextStyle(
                        color: AppColor.kPrimary,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                      onTab: () {
                        navigationService
                            .pushReplacementScreen(NamedRoutes.loginRoute);
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
