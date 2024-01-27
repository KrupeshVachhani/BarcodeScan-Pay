import 'dart:ffi';

import 'package:barcodescanner/components/OnBoarding_Controller.dart';
import 'package:barcodescanner/utils/helper_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/color.dart';
import '../../constants/size.dart';
import '../../utils/device_utility.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // OnBoardScreens
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardPage(
                image: 'assets/onboard/BarcodeScan_Phone_Animation.json',
                title: "Scan Barcodes ",
                subtitle:
                    "Scan and Add Items Instantly to Your \nShopping List!!",
                // "Effortless Barcode Scanning for Smart Shopping!",
              ),
              OnBoardPage(
                image: 'assets/onboard/ShoppingList_Animation.json',
                title: "Complete your Shopping list",
                subtitle: "Turn Scanned Items into a Perfect \nShopping Plan!!",
              ),
              OnBoardPage(
                image: 'assets/onboard/Payment_Done_Animation.json',
                title: "Make a Payment",
                subtitle: "Checkout in Style - Fast and Hassle-Free!",
                // "Tap, Pay, Enjoy - Effortless Payments for Happy Shopping!",
              ),
            ],
          ),

          // Skip button
          const SkipButton(),

          // Next Button and Dot Navigation combined
          Positioned(
            right: TSizes.defaultSpacing,
            bottom: TDeviceUtility.getBottomNavigationBarHeight(),
            child: OnBoardingNextButton(),
          ),

          // SmoothPageIndicator with the assigned controller
          Positioned(
            bottom: TDeviceUtility.getBottomNavigationBarHeight() + 25,
            left: TSizes.defaultSpacing,
            child: BottomDotNavigation(),
          ),
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return ElevatedButton(
      onPressed: () => controller.nextPage(),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: dark ? TColors.primary : Colors.black,
      ),
      child: const Icon(Iconsax.arrow_right_3),
    );
  }
}

class BottomDotNavigation extends StatelessWidget {
  const BottomDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return SmoothPageIndicator(
      controller: controller.pageController,
      onDotClicked: controller.dotNavigationClick,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: dark ? TColors.lightContainer : TColors.dark,
        dotHeight: 7,
      ),
    );
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtility.getAppBarHeight(),
      right: TSizes.defaultSpacing,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: TColors.lightContainer),
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text(
          'Skip',
          style: TextStyle(fontSize: TSizes.md, color: TColors.textPrimary),
        ),
      ),
    );
  }
}

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpacing),
      child: Column(
        children: [
          Lottie.asset(image,
              height: THelperFunctions.screenWidth() * 1.4,
              width: THelperFunctions.screenWidth() * 0.8),
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontSize: TSizes.fontSizeLg + 7),
              textAlign: TextAlign.center),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: TSizes.fontSizeMd),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('image', image));
  }
}
