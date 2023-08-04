import 'package:flutter/material.dart';
import 'package:your_app_name/gettingstarted_page.dart';
import 'package:your_app_name/login_page.dart';
import 'package:your_app_name/signup_page.dart';
import 'package:your_app_name/chat_page.dart'; // Import the ChatPage
import 'package:your_app_name/home_page.dart'; // Import the HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: GettingStartedPage.routeName,
      routes: {
        LoginPage.routeName: (ctx) => LoginPage(),
        SignupPage.routeName: (ctx) => SignupPage(),
        GettingStartedPage.routeName: (ctx) => GettingStartedPage(),
        ChatPage.routeName: (ctx) => ChatPage(), // Add this entry for the ChatPage route
        MyHomePage.routeName: (ctx) => MyHomePage(), // Add this entry for the MyHomePage route
      },
      onUnknownRoute: (settings) {
        // Handle unknown routes here, for example, you can redirect to a "404" page
        return MaterialPageRoute(builder: (ctx) => NotFoundPage());
      },
    );
  }
}

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Not Found')),
      body: Center(child: Text('404 - Page not found')),
    );
  }
}
