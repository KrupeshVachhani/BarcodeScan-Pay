import 'package:barcodescanner/components/screens/singup/signupScreenComponents.dart';
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
              Lottie.asset(
                'assets/SignUpPage_Animation.json',
                height: 160,
              ),

              SizedBox(height: TSizes.spaceBtwSection),

              //form fields

              Form(
                child: Column(
                  children: [
                    UserNameInputFieldS(),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    //email input field
                    EmailInputFieldS(),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    //password input field
                    PasswordInputFieldS(),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    //confirm phone number input field
                    PhoneNumberInputFieldS(),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    //terms and conditions
                    TermsAndConditionS(dark: dark),

                    const SizedBox(height: TSizes.spaceBtwSection),

                    //signup button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => const SignUpPage()),
                        child: Text(
                          'Sign up',
                        ),
                      ),
                    ),

                    const SizedBox(height: TSizes.spaceBtwSection),

                    //divider
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [OrSignInDividerS()],
                    ),

                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    //google login button
                    GoogleLoginButtonS(dark: dark)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
