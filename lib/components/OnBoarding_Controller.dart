import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  final currentPageIndex = 0.obs;

  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // You can navigate to the next screen or perform any action when reaching the last page
      // Get.to(LoginScreen());
    } else {
      int nextPage = currentPageIndex.value + 1;
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 400), // Set the duration (in milliseconds)
        curve: Curves.easeInOut, // Set the transition curve
      );
    }
  }
  void skipPage() {
    int lastPage = 2;

    // Use animateToPage to add transition animation
    pageController.animateToPage(
      lastPage,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );

    // Optional: If you want to update the currentPageIndex immediately
    currentPageIndex.value = lastPage;
  }

}

