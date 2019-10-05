import 'package:flutter/material.dart';
import 'package:flutter_island/pages/book_page.dart';
import 'package:flutter_island/pages/classic_page.dart';
import 'package:flutter_island/pages/my_page.dart';

class TabNavigator extends StatefulWidget{
  @override
  TabNavigatorState createState() => TabNavigatorState();
}

class TabNavigatorState extends State<TabNavigator>{
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.grey;
  var _controller = PageController(initialPage: 0);
  int _currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          ClassicPage(),
          BookPage(),
          MyPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: _currentIndex,
        onTap: (index) {},
        type: BottomNavigationBarType.fixed,
        items: [
          _bottomItem(Icons.home, '流行', 0),
          _bottomItem(Icons.search, '书单', 1),
          _bottomItem(Icons.camera_alt, '喜欢', 2),
        ],
      ),
    );
  }
  
  BottomNavigationBarItem _bottomItem(IconData icon, String title, int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: _defaultColor,
        ),
        activeIcon: Icon(
          icon,
          color: _activeColor,
        ),
        title: Text(
          title,
          style: TextStyle(
              color: _currentIndex != index ? _defaultColor : _activeColor),
        ));
  }
}

