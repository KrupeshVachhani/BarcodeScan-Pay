import 'package:barcodescanner/components/screens/login/login.dart';
import 'package:barcodescanner/constants/size.dart';
import 'package:barcodescanner/utils/spacing_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Lottie.asset(
                image,
                height: 350,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              //button

              Container(
                //put at bottum of screen
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.27),

                child: Column(children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onPressed,
                      child: Text(
                        'Continue',
                      ),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
