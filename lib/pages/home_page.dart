import 'package:flutter/material.dart';
import 'package:nike_app/components/buttom_nav_bar.dart';
import 'package:nike_app/pages/cart_page.dart';
import 'package:nike_app/pages/shop_page.dart';
import 'package:nike_app/pages/about_page.dart'; // Import About Page

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateButtomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateButtomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/nike.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Colors.grey[800]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
                onTap: () {
                  // Navigate to About Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutPage()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
