import 'package:benny/Screen/moviehomescreen.dart';
import 'package:benny/Screen/blogsnewsscreen.dart';
import 'package:benny/Screen/quizwinscreen.dart';
import 'package:benny/Screen/upcomingscreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    MovieHomescreen(),
    UpcomingScreen(),
    BlogsNewsScreen(),
    QuizWinScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildGradientImageIcon(String assetPath, bool isSelected) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: isSelected
          ? <Color>[
            Color(0xFF9A1398),
            Color(0xFFFA3A60),
            Color(0xFFFEBF40)
          ]
          : <Color>[Colors.white, Colors.white],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: ImageIcon(
        AssetImage(assetPath),
        size: 30,
        color: Colors.white,
      ),
    );
  }

  Widget _buildGradientText(String label) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: <Color>[
            Color(0xFF9A1398),
            Color(0xFFFA3A60),
            Color(0xFFFEBF40)
          ],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      String assetPath, String label, int index) {
    bool isSelected = _selectedIndex == index;
    return BottomNavigationBarItem(
      icon: _buildGradientImageIcon(assetPath, isSelected),
      label: label,
    );
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          _buildBottomNavigationBarItem('assets/images/icons8_home 1.png', 'Home', 0),
          _buildBottomNavigationBarItem('assets/images/icons8_clapperboard 1.png', 'Upcoming', 1),
          _buildBottomNavigationBarItem('assets/images/Vector (1).png', 'Blogs & News', 2),
          _buildBottomNavigationBarItem('assets/images/Vector (2).png', 'Quiz & Win', 3),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white, // Set color for unselected icons
        iconSize: 30, // Set the size of the icons
        backgroundColor: Color(0xFF1A1A1A), // set the color for background
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}

