import 'package:flutter/material.dart';
import 'package:your_app_name/login_page.dart';

class GettingStartedPage extends StatelessWidget {
  static const routeName = '/gettingStarted';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Pappa's",
                    style: TextStyle(
                      color: Color(0xfff27d28),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Comic Sans MS',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/golgappa.png',
              height: 500,
              width: 500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "-Just One More...",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.routeName);
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xfff27d28),
                minimumSize: Size(318, 46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
