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
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopPlacedContainer(),
            Container(
              // items,
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5), // Add outer padding of 5
                    child: Row(
                      children: [
                        Text('Items', textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedContainer(
                          // Main Container
                          width: 150, // Changed to 150
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    25), // Add rounded corners to the image
                                child: Image.asset(
                                  'assets/Special 1.jpg',
                                  fit: BoxFit.cover,
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      6,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Special 1',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '₹40',
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedContainer(
                          // Main Container
                          width: 150, // Changed to 150
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    25), // Add rounded corners to the image
                                child: Image.asset(
                                  'assets/Special 1.jpg',
                                  fit: BoxFit.cover,
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      6,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Special 1',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '₹40',
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedContainer(
                          // Main Container
                          width: 150, // Changed to 150
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    25), // Add rounded corners to the image
                                child: Image.asset(
                                  'assets/Special 1.jpg',
                                  fit: BoxFit.cover,
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      6,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Special 1',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '₹40',
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedContainer(
                          // Main Container
                          width: 150, // Changed to 150
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    25), // Add rounded corners to the image
                                child: Image.asset(
                                  'assets/Special 1.jpg',
                                  fit: BoxFit.cover,
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      6,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Special 1',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '₹40',
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedContainer(
                          // Main Container
                          width: 150, // Changed to 150
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    25), // Add rounded corners to the image
                                child: Image.asset(
                                  'assets/Special 1.jpg',
                                  fit: BoxFit.cover,
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      6,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Special 1',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '₹40',
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedContainer(
                          // Main Container
                          width: 150, // Changed to 150
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    25), // Add rounded corners to the image
                                child: Image.asset(
                                  'assets/Special 1.jpg',
                                  fit: BoxFit.cover,
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      6,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Special 1',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '₹40',
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Add more rows as needed...
          ],
        ),
      ),
    );
  }
}

class TopPlacedContainer extends StatelessWidget {
  const TopPlacedContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight =
        screenHeight * 0.37; // You can adjust the scaling factor as needed
    double bottomBorderRadius =
        containerHeight * 0.13; // You can adjust the scaling factor as needed

    return Container(
      width: double.infinity,
      height: containerHeight,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(bottomBorderRadius),
          bottomRight: Radius.circular(bottomBorderRadius),
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

class ElevatedContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final EdgeInsetsGeometry padding;

  const ElevatedContainer({
    required this.child,
    this.width = 150,
    this.padding = const EdgeInsets.all(5),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25), // 25% opacity
            blurRadius: 2,
            offset: Offset(0, 5),
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25), // 25% opacity
            blurRadius: 2,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: child,
    );
  }
}
