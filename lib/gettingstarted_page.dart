import 'package:flutter/material.dart';
import 'package:your_app_name/login_page.dart';

class GettingStartedPage extends StatelessWidget {
  static const routeName = '/gettingStarted'; // Add this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getting Started'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://example.com/panipuri_image.jpg', // Replace this with the actual URL of the Panipuri image
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.routeName);
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
