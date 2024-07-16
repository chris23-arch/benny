
import 'package:benny/Screen/quiz2screen.dart';
import 'package:flutter/material.dart';

class Quiz1Screen extends StatefulWidget {
  const Quiz1Screen({super.key});

  @override
  State<Quiz1Screen> createState() => _Quiz1ScreenState();
}

class _Quiz1ScreenState extends State<Quiz1Screen> {
  // Tracks which container is clicked
  int? _selectedContainer;

  // Method to handle container click
  void _onContainerTap(int index) {
    setState(() {
      _selectedContainer = index;
    });
      // Navigate to another screen when any container is clicked
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Quiz2Screen()),
      );
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF121212),
                Color(0xFF383838),
                Color(0xFF5A5A5A),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            leading: GestureDetector(
              onTap: () {
                // Handle back navigation to movie home screen
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/images/Vector (5).png', // Replace with your image asset path
                height: 20,
                width: 18,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), // Add padding around the text
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Which Bridgerton character\npromises to stand between\nheaven and earth for their\nspouse?',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Inter",
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 66), // Add spacing between the text and the container
            _buildOptionContainer(0, 'Colin Bridgerton'),
            SizedBox(height: 24), // Add spacing between containers
            _buildOptionContainer(1, 'Lady Danbury'),
            SizedBox(height: 24), // Add spacing between containers
            _buildOptionContainer(2, 'Cressida Cowper'),
            SizedBox(height: 24), // Add spacing between containers
            _buildOptionContainer(3, 'Queen Charlotte'),
          ],
        ),
      ),
      backgroundColor: Color(0xFF121212),
    );
  }

  // Helper method to build each option container
  Widget _buildOptionContainer(int index, String text) {
    return GestureDetector(
      onTap: () => _onContainerTap(index),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0),
        child: Container(
          width: 324.0, // Specify the width of the container
          height: 63.0, // Specify the height of the container
          decoration: BoxDecoration(
            color: _selectedContainer == index
                ? (index == 3 ? Colors.green : Colors.red)
                : Color(0xFF212020),
            borderRadius: BorderRadius.circular(17),
          ),
          padding: EdgeInsets.all(16.0), // Add padding inside the container
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center, // Center text vertically
            children: [
              Text(
                '${index + 1}.',
                style: TextStyle(
                  fontSize: 17.51,
                  fontFamily: "Inter",
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 24.0), // Add spacing between Text1 and Text2
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Inter",
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}