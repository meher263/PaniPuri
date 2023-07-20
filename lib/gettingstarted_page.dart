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
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ComicNeue',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/golgappa.png',
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "-Just One More...",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ComicNeue',
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.routeName);
              },
              child: Text('Get Started',style: TextStyle(fontSize: 25,),),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xfff27d28),
                minimumSize: Size(320, 50),
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