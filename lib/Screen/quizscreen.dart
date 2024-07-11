import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
          preferredSize:  Size.fromHeight(150),
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
               
              ))),
     body: Padding(
       padding: EdgeInsets.all(16.0), // Add padding around the text
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
          children: [
             Padding(
              padding: EdgeInsets.only(left: 16.0), 
            child:Text(
              'Which Star Trek character is\nSheldon Cooper of the Big Bang\nTheory`s favorite?',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Inter",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w600,
                ),
            ),
            ),
             SizedBox(height: 66), // Add spacing between the text and the container
                Padding(
              padding: EdgeInsets.only(left: 16.0), 
            child: Container(
              width: 324.0, // Specify the width of the container
              height: 63.0, // Specify the height of the container
              decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(17),
              ),
              padding: EdgeInsets.all(16.0), // Add padding inside the container
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, // Center text vertically
                children: [
                  Text(
                    '1.',
                    style: TextStyle(
                      fontSize: 17.51,
                fontFamily: "Inter",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                       ),
                  ),
                  SizedBox(width: 24.0), // Add spacing between Text1 and Text2
                  Text(
                    'Mr Marvel',
                    style: TextStyle(
                       fontSize: 16,
                fontFamily: "Inter",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500, 
                       ),
                  ),
          ]
        ),
     ),
                ),
                 SizedBox(height: 24), // Add spacing between the text and the container
                Padding(
              padding: EdgeInsets.only(left: 16.0), 
            child: Container(
              width: 324.0, // Specify the width of the container
              height: 63.0, // Specify the height of the container
              decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(17),
              ),
              padding: EdgeInsets.all(16.0), // Add padding inside the container
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, // Center text vertically
                children: [
                  Text(
                    '1.',
                    style: TextStyle(
                      fontSize: 17.51,
                fontFamily: "Inter",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                       ),
                  ),
                  SizedBox(width: 24.0), // Add spacing between Text1 and Text2
                  Text(
                    'Commander Zhao',
                    style: TextStyle(
                       fontSize: 16,
                fontFamily: "Inter",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                       ),
                  ),
          ]
        )
     ),
                ),
                 SizedBox(height: 24), // Add spacing between the text and the container
                Padding(
              padding: EdgeInsets.only(left: 16.0), 
            child: Container(
              width: 324.0, // Specify the width of the container
              height: 63.0, // Specify the height of the container
              decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(17),
              ),
              padding: EdgeInsets.all(16.0), // Add padding inside the container
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, // Center text vertically
                children: [
                  Text(
                    '1.',
                    style: TextStyle(
                      fontSize: 17.51,
                fontFamily: "Inter",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                       ),
                  ),
                  SizedBox(width: 24.0), // Add spacing between Text1 and Text2
                  Text(
                    'Avatar Korra',
                    style: TextStyle(
                       fontSize: 16,
                fontFamily: "Inter",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                       ),
                  ),
          ]
        )
     ),
                ),
                 SizedBox(height: 24), // Add spacing between the text and the container
                Padding(
              padding: EdgeInsets.only(left: 16.0), 
            child: Container(
              width: 324.0, // Specify the width of the container
              height: 63.0, // Specify the height of the container
              decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(17),
              ),
              padding: EdgeInsets.all(16.0), // Add padding inside the container
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, // Center text vertically
                children: [
                  Text(
                    '1.',
                    style: TextStyle(
                      fontSize: 17.51,
                fontFamily: "Inter",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                       ),
                  ),
                  SizedBox(width: 24.0), // Add spacing between Text1 and Text2
                  Text(
                    'Mr Spock',
                    style: TextStyle(
                       fontSize: 16,
                fontFamily: "Inter",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                       ),
                  ),
          ]
        )
     ),
                ),
             SizedBox(
            height:
                66), // Spacer between the first two containers and the second pair

        Padding(
            padding: EdgeInsets.only(left: 100),
            child: Row(children: [
              Container(
                width: 172,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF9A1398),
                      Color(0xFFFA3A60),
                      Color(0xFFFEBF40),
                    ], // Gradient colors for the first container
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(
                        2.0), // Adjust padding to control border width
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(
                              0xFF212020), // Background color of the inner container
                          borderRadius: BorderRadius.circular(
                              6.0), // Match the outer border radius minus the padding
                        ),
                       child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Next',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20.0), // Add spacing between Text and Image
                            Image.asset(
                              'assets/images/Vector (9).png', // Replace with your image asset path
                              height: 20,
                              width: 20,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    )
                )
                    ),
            ]
            )
            ),

          ]
        )
        
     ),
      backgroundColor: Color(0xFF212020),
    );
  }
}
