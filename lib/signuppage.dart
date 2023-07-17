import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: MyForm(),
            ),
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
          decoration: InputDecoration(
            hintText: "Full Name",
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Confirm Password",
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Checkbox(
              value: checkboxValue,
              onChanged: (value) {
                setState(() {
                  checkboxValue = value!;
                });
              },
            ),
            Expanded(
              child: Text(
                "By registering, you are agreeing with our Terms of Use and Privacy Policy",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Implement signup functionality
            },
            child: Text(
              "SignUp",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xfff27d28),
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
            ),
          ),
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
            // Implement login functionality
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
