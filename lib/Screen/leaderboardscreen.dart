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
       child:   Center(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
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
                    SizedBox(height: 16), // Add some space between the container and the leaderboard
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/person2.png'),
                          radius: 30,
                        ),
                        Text(
                          'Alena Donin',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          color: Colors.pink,
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '1,469 QP',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Image.asset('assets/images/second_place.png', height: 100),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/person1.png'),
                          radius: 30,
                        ),
                        Text(
                          'Davis Curtis',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          color: Colors.orange,
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '2,869 QP',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Image.asset('assets/images/first_place.png', height: 100),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/person3.png'),
                          radius: 30,
                        ),
                        Text(
                          'Craig Gouse',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          color: Colors.orange,
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '1,053 QP',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Image.asset('assets/images/third_place.png', height: 100),
                      ],
                    ),

                  ],
                ),
                  ]
            ),
          ),
          ),
          
        ),
       )
        ),
        );
  }
  }
