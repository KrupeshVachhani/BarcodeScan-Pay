import 'package:barcodescanner/components/screens/login/login.dart';
import 'package:barcodescanner/components/screens/singup/successScreen.dart';
import 'package:barcodescanner/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpacing),
              child: IconButton(
                  onPressed: () => Get.offAll(() => const loginScreen()),
                  icon: const Icon(Icons.clear)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpacing),
            child: Column(
              children: [
                Lottie.asset(
                  'assets/Email_Verificaition_Animation.json',
                  height: 350,
                ),
                Text(
                  'Verify your email address!',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(
                  'support@scannpay.com.',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSizes.spaceBtwItems - 3),
                Text(
                  'Congratulations! your Account Awaits: verity Your Email to start Shopping and Experience a World of unrivaled Deals and Personalized Offers.',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

                //button

                Container(
                  //put at bottum of screen
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.17),

                  child: Column(children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(
                          () => SuccessScreen(
                            image: 'assets/Success_Screen_Animation.json',
                            title: 'Your account has been created!',
                            subtitle:
                                'welcome to your Ultimate Shopping Destination: your Account is Created. unleash the JOY of Seamless Online Shopping!',
                            onPressed: () => Get.to(() => loginScreen()),
                          ),
                        ),
                        child: Text(
                          'Continue',
                        ),
                      ),
                    ),

                    SizedBox(height: TSizes.spaceBtwItems),

                    //resend email
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend Email',
                        ),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
