import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:your_app_name/login_page.dart';

class SignupPage extends StatelessWidget {
  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: MyForm(),
          ),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Let's Get Started",
          style: TextStyle(
            color: Color(0xfff27d28),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Create an account to access the app",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 20),
        TextField(
          // Remaining code for the signup form
          // ...
        ),
        SizedBox(height: 40),
        const Divider(
          color: Colors.grey,
          thickness: 1,
          height: 1,
        ),
        SizedBox(height: 20),
        Text(
          "---------- or connect with ----------",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/google_icon.svg',
              width: 24,
              height: 24,
            ),
            SizedBox(width: 20),
            Icon(Icons.facebook),
            SizedBox(width: 20),
            Icon(Icons.apple),
          ],
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, LoginPage.routeName);
          },
          child: Text(
            "Already have an account? Login",
            style: TextStyle(
              color: Color(0xfff27d28),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
