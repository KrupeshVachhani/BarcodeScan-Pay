import 'package:barcodescanner/components/screens/login/loginScreenComponents.dart';
import 'package:barcodescanner/constants/size.dart';
import 'package:barcodescanner/utils/helper_functions.dart';
import 'package:barcodescanner/utils/spacing_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Lottie.asset(
                    'assets/Animation.json',
                    height: 200,
                  ),
                  Text(
                    'Welcome to Barcode Scanner',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    'Please login to continue',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              //form fields

              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spaceBtwSection),
                  child: Column(
                    children: [
                      //email input field
                      const EmailInputField(),
                      //
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),

                      //password input field
                      PasswordInputField(),
                      //
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //checkbox remember me
                          RememberMeCheckBox(),

                          //forget password
                          ForgetPasswordButton()
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwSection),

                      //Signin button
                      SignInButton(),

                      const SizedBox(height: TSizes.spaceBtwItems),

                      //create an account button
                      CreateAnAccountButton(dark: dark),
                    ],
                  ),
                ),
              ),

              OrSignInDivider(),

              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //footer

              GoogleLoginButton(dark: dark),
            ],
          ),
        ),
      ),
    );
  }
}
