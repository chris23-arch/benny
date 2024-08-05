import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          const SizedBox(height: 48),
          Column(children: [
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
                      color: const Color(0xFFFA4E5B),
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
                      color: const Color(0xFFFEBF40),
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
                      color: const Color(0xFFFF8C4B),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, top: 15),
                          child: SizedBox(
                            height: 180, // Set your desired height
                            //  width: 115, // Set your desired width
                            child: Image.asset(
                              'assets/images/Rank.png', // Replace with your image asset path
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 262, // Set your desired height
                          width: 135, // Set your desired width
                          child: Image.asset(
                            'assets/images/Rank (1).png', // Replace with your image asset path
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16, top: 70),
                          child: SizedBox(
                            height: 180, // Set your desired height
                            // width: 115, // Set your desired width
                            child: Image.asset(
                              'assets/images/Rank (2).png', // Replace with your image asset path
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -90),
                  child: Container(
                    // Full width of the screen
                    width: double.maxFinite,
                    height: 832, // Set your desired height
                    decoration: BoxDecoration(
                      color: const Color(0xFF212020), // Set your desired color
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -900),
                  child: Container(
                    width: 350,
                    height: 104,
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-135, -972),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            25.0), // Adjust the radius as needed
                        child: Container(
                          width: 30.0, // Adjust the width as needed
                          height: 35.0, // Adjust the height as needed
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF9A1398),
                                Color(0xFFFA3A60),
                                Color(0xFFFEBF40)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 27.0, // Adjust the width as needed
                        height: 32.0, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        alignment: Alignment.center,
                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: const Text(
                            '5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-74, -1020),
                  child: Image.asset(
                    'assets/images/Avatar (2).png',
                    width: 56.0, // Replace with your desired width
                    height: 63.3, // Replace with your desired height
                  ),
                ),
                Transform.translate(
                  offset: const Offset(27, -1100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                          height:
                              24.87), // Adjust the height for proper alignment
                      const Text(
                        'Madelyn Dias',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFEFEFE),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4.52), // Space between texts
                      const Text(
                        '590 points',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFDADADA),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 1.82), // Space between texts
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [
                            Color(0xFF9A1398),
                            Color(0xFFFA3A60),
                            Color(0xFFFEBF40)
                          ],
                          tileMode: TileMode.mirror,
                        ).createShader(bounds),
                        child: const Text(
                          '20 movie tickets won!',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // second
                Transform.translate(
                  offset: const Offset(0, -1080),
                  child: Container(
                    width: 350,
                    height: 104,
                    decoration: BoxDecoration(
                      color: const Color(0XFF333333),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-135, -1148),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            25.0), // Adjust the radius as needed
                        child: Container(
                          width: 30.0, // Adjust the width as needed
                          height: 35.0, // Adjust the height as needed
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF9A1398),
                                Color(0xFFFA3A60),
                                Color(0xFFFEBF40)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 27.0, // Adjust the width as needed
                        height: 32.0, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        alignment: Alignment.center,
                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: const Text(
                            '6',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-74, -1197),
                  child: Image.asset(
                    'assets/images/Avatar (2).png',
                    width: 56.0, // Replace with your desired width
                    height: 63.3, // Replace with your desired height
                  ),
                ),
                Transform.translate(
                  offset: const Offset(27, -1280),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                          height:
                              24.87), // Adjust the height for proper alignment
                      const Text(
                        'Madelyn Dias',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFEFEFE),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4.52), // Space between texts
                      const Text(
                        '590 points',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFDADADA),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 1.82), // Space between texts
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [
                            Color(0xFF9A1398),
                            Color(0xFFFA3A60),
                            Color(0xFFFEBF40)
                          ],
                          tileMode: TileMode.mirror,
                        ).createShader(bounds),
                        child: const Text(
                          '20 movie tickets won!',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // third
                Transform.translate(
                  offset: const Offset(0, -1259),
                  child: Container(
                    width: 350,
                    height: 104,
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-135, -1329),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            25.0), // Adjust the radius as needed
                        child: Container(
                          width: 30.0, // Adjust the width as needed
                          height: 35.0, // Adjust the height as needed
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF9A1398),
                                Color(0xFFFA3A60),
                                Color(0xFFFEBF40)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 27.0, // Adjust the width as needed
                        height: 32.0, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        alignment: Alignment.center,
                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: const Text(
                            '7',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-74, -1376),
                  child: Image.asset(
                    'assets/images/Avatar (2).png',
                    width: 56.0, // Replace with your desired width
                    height: 63.3, // Replace with your desired height
                  ),
                ),
                Transform.translate(
                  offset: const Offset(27, -1458),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                          height:
                              24.87), // Adjust the height for proper alignment
                      const Text(
                        'Madelyn Dias',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFEFEFE),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4.52), // Space between texts
                      const Text(
                        '590 points',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFDADADA),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 1.82), // Space between texts
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [
                            Color(0xFF9A1398),
                            Color(0xFFFA3A60),
                            Color(0xFFFEBF40)
                          ],
                          tileMode: TileMode.mirror,
                        ).createShader(bounds),
                        child: const Text(
                          '20 movie tickets won!',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// fourth
                Transform.translate(
                  offset: const Offset(0, -1438),
                  child: Container(
                    width: 350,
                    height: 104,
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-135, -1510),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            25.0), // Adjust the radius as needed
                        child: Container(
                          width: 30.0, // Adjust the width as needed
                          height: 35.0, // Adjust the height as needed
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF9A1398),
                                Color(0xFFFA3A60),
                                Color(0xFFFEBF40)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 27.0, // Adjust the width as needed
                        height: 32.0, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        alignment: Alignment.center,
                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: const Text(
                            '8',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-74, -1558),
                  child: Image.asset(
                    'assets/images/Avatar (2).png',
                    width: 56.0, // Replace with your desired width
                    height: 63.3, // Replace with your desired height
                  ),
                ),
                Transform.translate(
                  offset: const Offset(27, -1640),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                          height:
                              24.87), // Adjust the height for proper alignment
                      const Text(
                        'Madelyn Dias',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFEFEFE),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4.52), // Space between texts
                      const Text(
                        '590 points',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFDADADA),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 1.82), // Space between texts
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [
                            Color(0xFF9A1398),
                            Color(0xFFFA3A60),
                            Color(0xFFFEBF40)
                          ],
                          tileMode: TileMode.mirror,
                        ).createShader(bounds),
                        child: const Text(
                          '20 movie tickets won!',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// fifth
                Transform.translate(
                  offset: const Offset(0, -1617),
                  child: Container(
                    width: 350,
                    height: 104,
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-135, -1686),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            25.0), // Adjust the radius as needed
                        child: Container(
                          width: 30.0, // Adjust the width as needed
                          height: 35.0, // Adjust the height as needed
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF9A1398),
                                Color(0xFFFA3A60),
                                Color(0xFFFEBF40)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 27.0, // Adjust the width as needed
                        height: 32.0, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        alignment: Alignment.center,
                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: const Text(
                            '9',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-74, -1736),
                  child: Image.asset(
                    'assets/images/Avatar (2).png',
                    width: 56.0, // Replace with your desired width
                    height: 63.3, // Replace with your desired height
                  ),
                ),
                Transform.translate(
                  offset: const Offset(27, -1819),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                          height:
                              24.87), // Adjust the height for proper alignment
                      const Text(
                        'Madelyn Dias',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFEFEFE),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4.52), // Space between texts
                      const Text(
                        '590 points',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFDADADA),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 1.82), // Space between texts
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [
                            Color(0xFF9A1398),
                            Color(0xFFFA3A60),
                            Color(0xFFFEBF40)
                          ],
                          tileMode: TileMode.mirror,
                        ).createShader(bounds),
                        child: const Text(
                          '20 movie tickets won!',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// fifth
                Transform.translate(
                  offset: const Offset(0, -1797),
                  child: Container(
                    width: 350,
                    height: 104,
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-135, -1870),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            25.0), // Adjust the radius as needed
                        child: Container(
                          width: 30.0, // Adjust the width as needed
                          height: 35.0, // Adjust the height as needed
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF9A1398),
                                Color(0xFFFA3A60),
                                Color(0xFFFEBF40)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 27.0, // Adjust the width as needed
                        height: 32.0, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        alignment: Alignment.center,
                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: const Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-74, -1915),
                  child: Image.asset(
                    'assets/images/Avatar (2).png',
                    width: 56.0, // Replace with your desired width
                    height: 63.3, // Replace with your desired height
                  ),
                ),
                Transform.translate(
                  offset: const Offset(27, -2000),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                          height:
                              24.87), // Adjust the height for proper alignment
                      const Text(
                        'Madelyn Dias',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFEFEFE),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4.52), // Space between texts
                      const Text(
                        '590 points',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFDADADA),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 1.82), // Space between texts
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [
                            Color(0xFF9A1398),
                            Color(0xFFFA3A60),
                            Color(0xFFFEBF40)
                          ],
                          tileMode: TileMode.mirror,
                        ).createShader(bounds),
                        child: const Text(
                          '20 movie tickets won!',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ]),
      ),
    );
  }
}
