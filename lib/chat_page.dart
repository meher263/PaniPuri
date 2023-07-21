import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static const routeName = '/chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          TopPlacedContainer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 165,
              height: 197.037,
              child: Padding(
                padding: EdgeInsets.only(left: 23.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(138, 55, 55, 0.7490196078431373),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 6.64,
                        left: 4.48,
                        right: 2.54,
                        bottom: 67.47,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            color: Colors.red,
                            // Customize the color as needed
                            // You can adjust the width, height, and content of this inner container
                            // based on your requirements.
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 48, // Adjust the bottom position as needed
                        left: 0,
                        right: 35,
                        child: Center(
                          child: Text(
                            'Samosa Chat',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Center Left',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class TopPlacedContainer extends StatelessWidget {
  const TopPlacedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 304,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
          style: BorderStyle.solid,
        ),
      ),
      child: const Center(
        child: Text(
          'Chaat',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    );
  }
}