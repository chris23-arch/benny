import 'package:benny/Screen/quiz1screen.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late ScrollController _controller;
  bool _showTitle = true;
  int? _selectedContainer;

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

  // Method to handle container click
  void _onContainerTap(int index) {
    setState(() {
      _selectedContainer = index;
    });
    // Navigate to another screen when any container is clicked
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Quiz1Screen()),
      );
    });
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
              expandedHeight: 230.0,
              leading: Image.asset(
                'assets/images/Vector (5).png', // Replace with your image asset path
                height: 21.02,
                width: 11.26,
              ),
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
                      left: 23,
                      bottom: 85.0,
                      child: ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                                colors: [
                                  Color(0xFF9A1398),
                                  Color(0xFFFFFA3A60),
                                  Color(0xFFFEBF40)
                                ], // Define your gradient colors here
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds),
                          child: Text(
                            "Question 1/5",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                            ),
                          )),
                    ),
                    Transform.translate(
                      offset: Offset(7, 189), // Move the text up
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Which Star Trek character is\nSheldon Cooper of the Big Bang\nTheory`s favorite?',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Inter",
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //  SliverOverlapInjector(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(7.0), // Add padding around the text
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: [
                    SizedBox(
                        height:
                            66), // Add spacing between the text and the container
                    _buildOptionContainer(0, 'Mr Marvel'),
                    SizedBox(height: 24), // Add spacing between containers
                    _buildOptionContainer(1, 'Commander Zhao'),
                    SizedBox(height: 24), // Add spacing between containers
                    _buildOptionContainer(2, 'Avatar Korra'),
                    SizedBox(height: 24), // Add spacing between containers
                    _buildOptionContainer(3, 'Mr Spock'),
                  ],
                ),
              ),
            ]))
          ]),
      backgroundColor: Color(0xFF121212),
    );
  }

  // Helper method to build each option container
  Widget _buildOptionContainer(int index, String text) {
        bool isSelected = _selectedContainer == index;
    bool isCorrect = index == 3; // Assuming index 3 is the correct answer

    return GestureDetector(
      onTap: () => _onContainerTap(index),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0),
        child: Container(
          width: 324.0, // Specify the width of the container
          height: 63.0, // Specify the height of the container
          decoration: BoxDecoration(
            color: isSelected
                ? (isCorrect ? Color(0xFF279401) : Color(0xFFFF3C3C))
                : Color(0xFF212020),
            borderRadius: BorderRadius.circular(17),
            border: Border.all(
              color: isSelected
                  ? (isCorrect ? Color(0xFF3CE700) : Color(0xFFC00000))
                  : Colors.transparent,
              width: 2.0,
            ),
          ),
          padding: EdgeInsets.all(16.0), // Add padding inside the container
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center text vertically
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
