import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
              child: AppBar(
            leading: GestureDetector(
              onTap: () {
                // Handle back navigation to movie home screen
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/images/Vector (5).png', // Replace with your image asset path
                height: 24,
                width: 24,
              ),
            ),
            title: const Text(
              "Leaderboard",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            titleSpacing: 1.0,
            elevation: 0,
            backgroundColor: const Color(0xFF121212),
          ))),
      backgroundColor: const Color(0xFF121212),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 5),
            child: Container(
              width: 328,
              height: 88,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFF212020),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(8),
                      constraints: const BoxConstraints(
                        minWidth: 56, // Set your desired width here
                        minHeight: 56, // Set your desired height here
                      ),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF9A1398),
                            Color(0xFFFA3A60),
                            Color(0xFFFEBF40),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          '#4',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Graphik",
                          ),
                        ),
                      )),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text(
                        'Congratulations!',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                        ),
                      ),
                      Text(
                        'You\'re in 4th place!!',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 48),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Transform.translate(
                          offset: const Offset(7, 44),
                          child: Image.asset(
                            'assets/images/Mask Group.png', // Replace with your image asset path
                            height: 56,
                            width: 56,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(15, 63),
                          child: const Text(
                            'Alena Donin',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Rubik",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Transform.translate(
                          offset: const Offset(0, 7),
                          child: Image.asset(
                            'assets/images/Mask Group (1).png', // Replace with your image asset path
                            height: 56,
                            width: 56,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(0, 23),
                          child: const Text(
                            'Davis Curtis',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Rubik",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Transform.translate(
                          offset: const Offset(-9, 70),
                          child: Image.asset(
                            'assets/images/Avatar (1).png', // Replace with your image asset path
                            height: 56,
                            width: 56,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(-9, 90),
                          child: const Text(
                            'Craig Gouse',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Rubik",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.translate(
                    offset: const Offset(63, 50), // Move right
                    child: Container(
                      width: 70,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Color(0xFFFA4E5B),
                        borderRadius:
                            BorderRadius.circular(12), // Add border radius
                      ),
                      child: const Center(
                        child: Text(
                          '1,469 QP',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Rubik",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, 10), // Move right
                    child: Container(
                      width: 70,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Color(0xFFFEBF40),
                        borderRadius:
                            BorderRadius.circular(12), // Add border radius
                      ),
                      child: const Center(
                        child: Text(
                          '2,569 QP',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Rubik",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-63, 80), // Move right
                    child: Container(
                      width: 70,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF8C4B),
                        borderRadius:
                            BorderRadius.circular(12), // Add border radius
                      ),
                      child: const Center(
                        child: Text(
                          '1,053 QP',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Rubik",
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.translate(
                        offset: const Offset(35, -4), // Move right
                        child: SizedBox(
                          height: 180, // Set your desired height
                          width: 98, // Set your desired width
                          child: Image.asset(
                            'assets/images/Rank.png', // Replace with your image asset path
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 36, top: 0),
                        child: SizedBox(
                          height: 262, // Set your desired height
                          width: 110, // Set your desired width
                          child: Image.asset(
                            'assets/images/Rank (1).png', // Replace with your image asset path
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.3, top: 53),
                        child: SizedBox(
                          height: 180, // Set your desired height
                          width: 98, // Set your desired width
                          child: Image.asset(
                            'assets/images/Rank (2).png', // Replace with your image asset path
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(children: [
                  Transform.translate(
                    offset: Offset(0, -90),
                    child: Container(
                      // Full width of the screen
                      width: double.maxFinite,
                      height: 832, // Set your desired height
                      decoration: BoxDecoration(
                        color: Color(0xFF212020), // Set your desired color
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  Positioned(
                    top:
                        20, // Adjust this value as needed to position the container on top
                    left:
                        -5, // Adjust this value as needed to position the container
                    right:
                        0, // Adjust this value as needed to position the container
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 355, // Set the width of the container
                        height: 104, // Set your desired height
                        // margin: EdgeInsets.only(top: 0), // Move the container up
                        decoration: BoxDecoration(
                          color: Colors.green, // Set your desired color
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  )
              ]
              ),
            ],
          ),
        ]
        ),
        ]
      ),
      )
    );
  }
}
