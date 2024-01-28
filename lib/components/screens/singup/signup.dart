import 'package:barcodescanner/components/screens/singup/signupScreenComponents.dart';
import 'package:barcodescanner/components/screens/singup/verifyEmail.dart';
import 'package:barcodescanner/constants/color.dart';
import 'package:barcodescanner/constants/size.dart';
import 'package:barcodescanner/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: dark ? TColors.white : TColors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpacing),
          child: Column(
            children: [
              Lottie.asset('assets/SignUpPage_Animation.json', height: 180),

              SizedBox(height: TSizes.spaceBtwSection),

              //form fields

              Form(
                child: Column(children: [
                  UserNameInputFieldS(),
                  SizedBox(height: TSizes.spaceBtwInputFields),
                  EmailInputFieldS(),
                  SizedBox(height: TSizes.spaceBtwInputFields),
                  PasswordInputFieldS(),
                  SizedBox(height: TSizes.spaceBtwInputFields),
                  PhoneNumberInputFieldS(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TermsAndConditionS(dark: dark),
                  SizedBox(height: TSizes.spaceBtwSection),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => VerifyEmailScreen()),
                      child: Text(
                        'Sign up',
                      ),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSection),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Flexible(
                        child: Divider(
                          color: TColors.darkGrey,
                          thickness: 1,
                          indent: 60,
                          endIndent: 5,
                        ),
                      ),
                      Text(
                        'Or Sign in with',
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: TColors.darkGrey,
                                  fontSize: TSizes.md - 3,
                                ),
                      ),
                      const Flexible(
                        child: Divider(
                          color: TColors.darkGrey,
                          thickness: 1,
                          indent: 5,
                          endIndent: 60,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  GoogleLoginButtonS(dark: dark)
                ]),
              )

              // Form(
              //   child: Column(
              //     children: [
              //       // UserNameInputFieldS(),
              //       // const SizedBox(
              //       //   height: TSizes.spaceBtwInputFields,
              //       // ),
              //       //email input field
              //       // EmailInputFieldS(),
              //       // const SizedBox(
              //       //   height: TSizes.spaceBtwInputFields,
              //       // ),
              //       //password input field
              //       // PasswordInputFieldS(),
              //       // const SizedBox(
              //       //   height: TSizes.spaceBtwInputFields,
              //       // ),

              //       //confirm phone number input field
              //       // PhoneNumberInputFieldS(),
              //       // const SizedBox(
              //       //   height: TSizes.spaceBtwInputFields,
              //       // ),

              //       //terms and conditions
              //       // TermsAndConditionS(dark: dark),

              //       // const SizedBox(height: TSizes.spaceBtwSection),

              //       //signin button
              //       // SizedBox(
              //       //   width: double.infinity,
              //       //   child: ElevatedButton(
              //       //     onPressed: () => Get.to(() {}),
              //       //     child: Text(
              //       //       'Sign up',
              //       //     ),
              //       //   ),
              //       // ),

              //       // const SizedBox(height: TSizes.spaceBtwSection),

              //       //divider
              //       // Row(
              //       //   mainAxisAlignment: MainAxisAlignment.center,
              //       //   children: [OrSignInDividerS()],
              //       // ),

              //       // SizedBox(
              //       //   height: TSizes.spaceBtwItems,
              //       // ),

              //       //google login button
              //       // GoogleLoginButtonS(dark: dark)
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
