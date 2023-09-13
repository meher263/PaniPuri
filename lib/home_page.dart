import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = '/home';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ProfilePage(),
    RewardsPage(),
    HomePage(),
    CartPage(),
    HistoryPage(),
  ];

  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard,color: Colors.black,),
            label: 'Rewards',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,color: Colors.black,),
            label: 'Cart',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history,color: Colors.black,),
            label: 'History',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

// Profile Page
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Color(0xFFF27D28),
            ),
            onPressed: () {
              // Handle notification button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 25,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 227, 219, 0.5),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(125),
                              border: Border.all(
                                width: 2,
                                color: Colors.orange,
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.person, // Replace with your profile image
                                size: 100,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.orange,
                                ),
                                onPressed: () {
                                  // Handle camera icon button press
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Vedashakti',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'vedashakti@gmail.com',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              width: 116,
                              height: 47,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Box 1', // Text for the first box
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              width: 116,
                              height: 47,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Box 2', // Text for the second box
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              width: 116,
                              height: 47,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Box 3', // Text for the third box
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ProfileMenuWidget(
                        title: "Edit Profile Details",
                        icon: Icons.edit,
                        onPressed: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenuWidget(
                        title: "Account",
                        icon: Icons.account_box,
                        onPressed: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenuWidget(
                        title: "Wishlist",
                        icon: Icons.favorite,
                        onPressed: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenuWidget(
                        title: "Settings",
                        icon: Icons.settings,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    required this.title,
    required this.icon,
    required this.onPressed,
    this.endIcon = true,
    this.textColor,
    Key? key,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.orange,
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      trailing: Container(
        width: 30,
        height: 30,
        child: Icon(
          Icons.arrow_right,
          size: 18.0,
          color: Colors.grey,
        ),
      ),
      onTap: onPressed,
    );
  }
}

// Rewards Page
class RewardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Rewards Page'),
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}

// Cart Page
class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Cart Page'),
    );
  }
}

// History Page
class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('History Page'),
    );
  }
}
