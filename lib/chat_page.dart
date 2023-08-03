import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  static const routeName = '/chat';

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  List<bool> _isFavoriteList = [false, false, false, false];
  List<AnimationController> _controllerList = [];

  @override
  void initState() {
    super.initState();
    int itemCount = 4; // Replace 4 with the actual number of items you have
    _isFavoriteList = List.generate(itemCount, (_) => false);
    _controllerList = List.generate(
      itemCount,
          (_) => AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300),
      ),
    );
  }

  @override
  void dispose() {
    for (var controller in _controllerList) {
      controller.dispose();
    }
    super.dispose();
  }

  void _toggleFavorite(int index) {
    setState(() {
      _isFavoriteList[index] = !_isFavoriteList[index];
      if (_isFavoriteList[index]) {
        _controllerList[index].forward();
      } else {
        _controllerList[index].reverse();
      }
    });
  }

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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                // items,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xffF2E3DB).withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
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
                            width: 185,
                            height: 200,
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.5 / 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'assets/Special 1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
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
                                GestureDetector(
                                  onTap: () {
                                    _toggleFavorite(0);
                                  },
                                  child: ScaleTransition(
                                    scale: Tween(begin: 0.7, end: 1.0)
                                        .animate(
                                      CurvedAnimation(
                                        parent: _controllerList[0],
                                        curve: Curves.easeOut,
                                      ),
                                    ),
                                    child: _isFavoriteList[0]
                                        ? const Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.red,
                                    )
                                        : const Icon(
                                      Icons.favorite_border,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedContainer(
                            // Main Container
                            width: 185,
                            height: 200,
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.5 / 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'assets/Special 1.jpg',
                                      fit: BoxFit.cover,
                                    ),
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
                                GestureDetector(
                                  onTap: () {
                                    _toggleFavorite(1);
                                  },
                                  child: ScaleTransition(
                                    scale: Tween(begin: 0.7, end: 1.0)
                                        .animate(
                                      CurvedAnimation(
                                        parent: _controllerList[1],
                                        curve: Curves.easeOut,
                                      ),
                                    ),
                                    child: _isFavoriteList[1]
                                        ? const Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.red,
                                    )
                                        : const Icon(
                                      Icons.favorite_border,
                                      size: 30,
                                    ),
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
                            width: 185,
                            height: 200,
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.5 / 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'assets/Special 1.jpg',
                                      fit: BoxFit.cover,
                                    ),
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
                                GestureDetector(
                                  onTap: () {
                                    _toggleFavorite(2);
                                  },
                                  child: ScaleTransition(
                                    scale: Tween(begin: 0.7, end: 1.0)
                                        .animate(
                                      CurvedAnimation(
                                        parent: _controllerList[2],
                                        curve: Curves.easeOut,
                                      ),
                                    ),
                                    child: _isFavoriteList[2]
                                        ? const Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.red,
                                    )
                                        : const Icon(
                                      Icons.favorite_border,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedContainer(
                            // Main Container
                            width: 185,
                            height: 200,
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.5 / 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'assets/Special 1.jpg',
                                      fit: BoxFit.cover,
                                    ),
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
                                GestureDetector(
                                  onTap: () {
                                    _toggleFavorite(3);
                                  },
                                  child: ScaleTransition(
                                    scale: Tween(begin: 0.7, end: 1.0)
                                        .animate(
                                      CurvedAnimation(
                                        parent: _controllerList[3],
                                        curve: Curves.easeOut,
                                      ),
                                    ),
                                    child: _isFavoriteList[3]
                                        ? const Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.red,
                                    )
                                        : const Icon(
                                      Icons.favorite_border,
                                      size: 30,
                                    ),
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
            ),
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
          'special',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    );
  }
}

class ElevatedContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  const ElevatedContainer({
    required this.child,
    this.width = 185,
    this.height = 200,
    this.padding = const EdgeInsets.all(5),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
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
