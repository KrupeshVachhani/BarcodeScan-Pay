import 'package:barcodescanner/constants/color.dart';
import 'package:barcodescanner/constants/size.dart';
import 'package:barcodescanner/utils/helper_functions.dart';
import 'package:barcodescanner/utils/spacing_style.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
                    dark ? 'assets/Animation.json' : 'assets/Animation.json',
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
                          Row(
                            children: [
                              //checkbox remember me
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Remember me',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),

                          //forget password
                          TextButton(
                            onPressed: () {},
                            child: const Text('Forget Password'),
                          )
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwSection),

                      //Signin button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Sign in'),
                        ),
                      ),

                      const SizedBox(height: TSizes.spaceBtwItems),

                      //create an account button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Create an account'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

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
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
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

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? TColors.darkGrey : TColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.iconLg,
              height: TSizes.iconLg,
              image: AssetImage('assets/google.png'),
            ),
          ),
        ),
      ],
    );
  }
}

class EmailInputField extends StatelessWidget {
  const EmailInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        labelText: "E-mail",
      ),
    );
  }
}

class PasswordInputField extends StatefulWidget {
  const PasswordInputField({
    Key? key,
  }) : super(key: key);

  @override
  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        labelText: "Password",
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}
