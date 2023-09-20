import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rova_23/screens/access_location.dart';
import 'package:rova_23/screens/select_crops_screen.dart';
//import 'package:rova_23/screens/select_language.dart';
import 'package:rova_23/screens/splash_screen.dart';


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // initialRoute: '/',
      routes: {
       
        '/queryScreen':(context) => const SelectCropsScreen(),
        '/accessLocationScreen':(context) => AccessLocationScreen(),
        // '/resultScreen':(context) => ResultScreen()
      },
      title: 'Rova-23',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
