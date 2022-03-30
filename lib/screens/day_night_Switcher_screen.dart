import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:example_app/controllers/day_night_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DayNightSwitcherScreen extends StatelessWidget {
  const DayNightSwitcherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DayNightController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day Night Switcher'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DayNightSwitcher(
              isDarkModeEnabled: controller.isDarkModeEnable.value,
              onStateChanged: (bool isDarkModeEnabled) {
                controller.isDarkModeEnable.value = isDarkModeEnabled;
              },
            ),
            // DayNightSwitcherIcon(
              
            //   isDarkModeEnabled: controller.isDarkModeEnable.value,
            //   onStateChanged: (bool isDarkModeEnabled) {
            //     controller.isDarkModeEnable.value = isDarkModeEnabled;
            //   },
            // ),
            const SizedBox(height: 15),
            Obx(
              () => Text(
                controller.isDarkModeEnable.value ? 'Dark Mode' : "Light Mode",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
