import 'package:benny/Screen/quizscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuizWinScreen extends StatefulWidget {
  const QuizWinScreen({super.key});

  @override
  State<QuizWinScreen> createState() => _QuizWinScreenState();
}

class _QuizWinScreenState extends State<QuizWinScreen> {
  late ScrollController _controller;
  bool _showTitle = true;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    _controller.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_controller.offset > 10 && _showTitle) {
      setState(() => _showTitle = false);
    } else if (_controller.offset <= 10 && !_showTitle) {
      setState(() => _showTitle = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          controller: _controller,
          slivers: [
            SliverAppBar(
              backgroundColor: const Color(0xFF121212),
              expandedHeight: 180.0,
              leading: Image.asset(
                'assets/images/Vector (5).png', // Replace with your image asset path
                height: 21.02,
                width: 11.26,
              ),
              title: const Text(
                "Quiz and Win",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto",
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/Vector (3).png', // Replace with your image asset path
                    height: 20.0,
                    width: 18.0,
                  ),
                )
              ],
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/4553888_19629 2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        left: 16,
                        bottom: 56.0,
                        child: Text(
                          "Select Quiz",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                          ),
                        ))
                  ],
                ),
              ),
            ),
            //  SliverOverlapInjector(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(
                                left:
                                    0.0), // Move container a little to the left
                            width: 360, // Set width to match parent
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFF212020),
                              border: Border.all(
                                color: Color(0xFF606060), // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(
                                  20.0), // Optional: Add border radius
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 10.0),
                                Image.asset(
                                  'assets/images/Vector (10).png', // Replace with your image asset path
                                  height: 50.67, // Adjust height as needed
                                  width: 42.67, // Adjust width as needed
                                ),
                                SizedBox(
                                    width:
                                        16.0), // Add spacing between image and text
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Living in Bondage',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Nollywood . 10 Questions',
                                      style: TextStyle(
                                        color: Color(0xFF858494),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(), // Add space to push last image to the end
                                Image.asset(
                                  'assets/images/Icon (2).png', // Replace with your image asset path
                                  height: 24.0, // Adjust height as needed
                                  width: 24.0, // Adjust width as needed
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height:
                              16.0), // Add spacing between the two containers
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(
                                left:
                                    0.0), // Move container a little to the left
                            width: 360, // Set width to match parent
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFF212020),
                              border: Border.all(
                                color: Color(0xFF606060), // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(
                                  20.0), // Optional: Add border radius
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 10.0),
                                Image.asset(
                                  'assets/images/Vector (10).png', // Replace with your image asset path
                                  height: 50.67, // Adjust height as needed
                                  width: 42.67, // Adjust width as needed
                                ),
                                SizedBox(
                                    width:
                                        16.0), // Add spacing between image and text
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Bridgerton',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Hollywood . 10 Questions',
                                      style: TextStyle(
                                        color: Color(0xFF858494),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(), // Add space to push last image to the end
                                Image.asset(
                                  'assets/images/Icon (2).png', // Replace with your image asset path
                                  height: 24.0, // Adjust height as needed
                                  width: 24.0, // Adjust width as needed
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height:
                              16.0), // Add spacing between the two containers
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(
                                left:
                                    0.0), // Move container a little to the left
                            width: 360, // Set width to match parent
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFF212020),
                              border: Border.all(
                                color: Color(0xFF606060), // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(
                                  20.0), // Optional: Add border radius
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 10.0),
                                Image.asset(
                                  'assets/images/Vector (10).png', // Replace with your image asset path
                                  height: 50.67, // Adjust height as needed
                                  width: 42.67, // Adjust width as needed
                                ),
                                SizedBox(
                                    width:
                                        16.0), // Add spacing between image and text
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Avengers: Endgame',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Hollywood . 10 Questions',
                                      style: TextStyle(
                                        color: Color(0xFF858494),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(), // Add space to push last image to the end
                                Image.asset(
                                  'assets/images/Icon (2).png', // Replace with your image asset path
                                  height: 24.0, // Adjust height as needed
                                  width: 24.0, // Adjust width as needed
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                          height:
                              16.0), // Add spacing between the two containers
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(
                                left:
                                    0.0), // Move container a little to the left
                            width: 360, // Set width to match parent
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFF212020),
                              border: Border.all(
                                color: Color(0xFF606060), // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(
                                  20.0), // Optional: Add border radius
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 10.0),
                                Image.asset(
                                  'assets/images/Vector (10).png', // Replace with your image asset path
                                  height: 50.67, // Adjust height as needed
                                  width: 42.67, // Adjust width as needed
                                ),
                                SizedBox(
                                    width:
                                        16.0), // Add spacing between image and text
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Living in Bondage',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Nollywood . 10 Questions',
                                      style: TextStyle(
                                        color: Color(0xFF858494),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(), // Add space to push last image to the end
                                Image.asset(
                                  'assets/images/Icon (2).png', // Replace with your image asset path
                                  height: 24.0, // Adjust height as needed
                                  width: 24.0, // Adjust width as needed
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                          height:
                              16.0), // Add spacing between the two containers
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(
                                left:
                                    0.0), // Move container a little to the left
                            width: 360, // Set width to match parent
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFF212020),
                              border: Border.all(
                                color: Color(0xFF606060), // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(
                                  20.0), // Optional: Add border radius
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 10.0),
                                Image.asset(
                                  'assets/images/Vector (10).png', // Replace with your image asset path
                                  height: 50.67, // Adjust height as needed
                                  width: 42.67, // Adjust width as needed
                                ),
                                SizedBox(
                                    width:
                                        16.0), // Add spacing between image and text
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Living in Bondage',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Nollywood . 10 Questions',
                                      style: TextStyle(
                                        color: Color(0xFF858494),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(), // Add space to push last image to the end
                                Image.asset(
                                  'assets/images/Icon (2).png', // Replace with your image asset path
                                  height: 24.0, // Adjust height as needed
                                  width: 24.0, // Adjust width as needed
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                          height:
                              16.0), // Add spacing between the two containers
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(
                                left:
                                    0.0), // Move container a little to the left
                            width: 360, // Set width to match parent
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFF212020),
                              border: Border.all(
                                color: Color(0xFF606060), // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(
                                  20.0), // Optional: Add border radius
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 10.0),
                                Image.asset(
                                  'assets/images/Vector (10).png', // Replace with your image asset path
                                  height: 50.67, // Adjust height as needed
                                  width: 42.67, // Adjust width as needed
                                ),
                                SizedBox(
                                    width:
                                        16.0), // Add spacing between image and text
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Living in Bondage',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Nollywood . 10 Questions',
                                      style: TextStyle(
                                        color: Color(0xFF858494),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(), // Add space to push last image to the end
                                Image.asset(
                                  'assets/images/Icon (2).png', // Replace with your image asset path
                                  height: 24.0, // Adjust height as needed
                                  width: 24.0, // Adjust width as needed
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 32),
                      Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: SizedBox(
                              width: 355,
                              height: 40,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 13.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF9A1398),
                                      Color(0xFFFA3A60),
                                      Color(0xFFFEBF40)
                                    ], // Replace with your desired colors
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  // color: Colors.black.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 4.0),
                                    Text(
                                      'See all quizzes',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: 'Roboto',
                                      ),
                                    ),
                                  ],
                                ),
                              ))),

                      SizedBox(
                          height:
                              15), // Add spacing of 20 between the two containers
                      Container(
                        width: 355,
                        height: 40, // Set the height of the new container
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.transparent,
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40),
                            ], // Gradient border colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(
                              1), // Margin to show the gradient border
                          decoration: BoxDecoration(
                            color: Color(0xFF121212),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Center(
                            child: ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [
                                    Color(0xFF9A1398),
                                    Color(0xFFFA3A60),
                                    Color(0xFFFEBF40)
                                  ], // Gradient text colors
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(bounds);
                              },
                              child: const Text(
                                'View leaderboard',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors
                                      .white, // Color set to white for shader mask
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50)
                    ],
                  ),
                ],
              ),
            ),
          ]),
      backgroundColor: Color(0xFF121212),
    );
  }
}
