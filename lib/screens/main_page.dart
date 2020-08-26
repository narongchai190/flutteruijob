import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joblistingui/provider/tap_provider.dart';
import 'package:joblistingui/screens/home_page.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TapProvider>(context);
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            // setState(() => _currentIndex = index);
            provider.currentIndex;
          },
          children: <Widget>[
            MyHomePage(),
            MyHomePage(),
            MyHomePage(),
            Container(
              color: Colors.amberAccent,
            ),
            // MyHomePage(),
            // MyHomePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        // backgroundColor: Color(0xFF1F88A0),
        selectedIndex: provider.currentIndex,
        onItemSelected: (index) {
          // setState(() => _currentIndex = index);
          provider.currentIndex = index;
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: Color(0xFF91CCDA),
            inactiveColor: Color(0xFF93999B),
            title: Text(
              'Home',
              style: TextStyle(
                color: Color(0xFF1F88A0),
              ),
            ),
            icon: Icon(
              Icons.home,
              size: 22.0,
            ),
          ),
          BottomNavyBarItem(
            activeColor: Color(0xFF91CCDA),
            inactiveColor: Color(0xFF93999B),
            title: Text(
              'Item One',
              style: TextStyle(
                color: Color(0xFF1F88A0),
              ),
            ),
            icon: Icon(
              FontAwesomeIcons.suitcase,
              size: 22.0,
            ),
          ),
          BottomNavyBarItem(
            activeColor: Color(0xFF91CCDA),
            inactiveColor: Color(0xFF93999B),
            title: Text(
              'Item One',
              style: TextStyle(
                color: Color(0xFF1F88A0),
              ),
            ),
            icon: Icon(
              Icons.chat_bubble,
              size: 22.0,
            ),
          ),
          BottomNavyBarItem(
            activeColor: Color(0xFF91CCDA),
            inactiveColor: Color(0xFF93999B),
            title: Text(
              'Item One',
              style: TextStyle(
                color: Color(0xFF1F88A0),
              ),
            ),
            icon: Icon(
              FontAwesomeIcons.userCircle,
              size: 22.0,
            ),
          ),
          // BottomNavyBarItem(
          //   title: Text('Item One'),
          //   icon: Icon(
          //     FontAwesomeIcons.userCircle,
          //     size: 22.0,
          //   ),
          // ),
        ],
      ),
    );
  }
}
