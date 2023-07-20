import 'package:flutter/material.dart';
import 'package:your_app_name/gettingstarted_page.dart'; // Import the GettingStartedPage

// Existing imports
import 'package:your_app_name/login_page.dart';
import 'package:your_app_name/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: GettingStartedPage.routeName, // Set GettingStartedPage as the initial route
      routes: {
        LoginPage.routeName: (ctx) => LoginPage(),
        SignupPage.routeName: (ctx) => SignupPage(),
        GettingStartedPage.routeName: (ctx) => GettingStartedPage(),
      },
    );
  }
}
