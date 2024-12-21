import 'package:flutter/material.dart';
import 'package:islami/cache_helper/cache_helper.dart';
import 'package:islami/hadeth_details/hadeth_details.dart';
import 'package:islami/home/home.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/onBoading_screen.dart';
import 'package:islami/sura_details/sura_details_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: CacheHelper.getEligibility() == true
          ? HomeScreen.routeName
          : OnBoardingScreen.routeName,
      routes: {
        OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}