import 'package:barcodescanner/components/screens/homescreen/homescreen.dart';
import 'package:barcodescanner/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: BouncingScrollPhysics(),
        onPageChanged: controller.onPageChanged, // Listen for page changes
        children: controller.screens,
      ),
      bottomNavigationBar: Obx(() => NavigationBar(
            indicatorColor: TColors.primary,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: controller.onItemTapped,
            destinations: [
              NavigationDestination(icon: Iconsax.home, label: 'Home'),
              NavigationDestination(icon: Iconsax.info_circle, label: 'Help'),
              NavigationDestination(icon: Iconsax.user, label: 'Profile'),
            ],
          )),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final PageController pageController = PageController(initialPage: 0);

  final screens = [
    HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.green),
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Update selected index on page change
  void onPageChanged(int index) {
    selectedIndex.value = index;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

class NavigationDestination {
  final IconData icon;
  final String label;

  NavigationDestination({required this.icon, required this.label});
}

class NavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final Color indicatorColor;
  final List<NavigationDestination> destinations;

  const NavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.indicatorColor,
    required this.destinations,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      currentIndex: selectedIndex,
      onTap: onDestinationSelected,
      items: destinations.map((destination) {
        return BottomNavigationBarItem(
          icon: Icon(destination.icon),
          label: destination.label,
        );
      }).toList(),
      selectedItemColor: indicatorColor,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
