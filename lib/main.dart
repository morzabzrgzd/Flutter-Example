import 'package:example_app/controllers/day_night_controller.dart';
import 'package:example_app/screens/day_night_Switcher_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DayNightController());
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        darkTheme: ThemeData.dark(),
        themeMode: controller.isDarkModeEnable.value
            ? ThemeMode.dark
            : ThemeMode.light,
        theme: ThemeData.light(),
        home: const DayNightSwitcherScreen(),
      ),
    );
  }
}
