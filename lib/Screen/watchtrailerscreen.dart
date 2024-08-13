import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WatchTrailerScreen extends StatefulWidget {
  const WatchTrailerScreen({super.key});

  @override
  State<WatchTrailerScreen> createState() => _WatchTrailerScreenState();
}

class _WatchTrailerScreenState extends State<WatchTrailerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
              decoration: const BoxDecoration(
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
                title: const Text(
                  "Watch Trailer",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                titleSpacing: 1.0,
                elevation: 0,
                backgroundColor: Colors.transparent,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Image.asset(
                      'assets/images/Vector (3).png', // Replace with your image asset path
                      height: 20,
                      width: 18,
                    ),
                  ),
                ],
              ))),
      body: SingleChildScrollView(
        child: Column(children: [
          // const SizedBox(height: 22),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                width: 700, // Adjust the width of the container here
                height: 127,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFF34D58),
                      Color(0xFFEB3442),
                      Color(0xFFE72736)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  color: const Color(0xFF383838),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Stack(
                  children: [
                    // Top right image
                    Positioned(
                      top: 1,
                      right: 7,
                      child: Image.asset(
                        'assets/images/icons8_play_button 2.png', // Replace with your image path
                        width: 38.97, // Adjust width as needed
                        height: 38.97, // Adjust height as needed
                      ),
                    ),
                    // Bottom left image
                    Positioned(
                      bottom: 27,
                      left: 13,
                      child: Image.asset(
                        'assets/images/icons8_play_button 3.png', // Replace with your image path
                        width: 38.97, // Adjust width as needed
                        height: 38.97, // Adjust height as needed
                      ),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: [
                              const Text(
                                'SUBSCRIBE TO OUR YOUTUBE CHANNEL',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Anton',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 26,
                                  shadows: [
                                    Shadow(
                                      color: Color.fromRGBO(
                                          0, 0, 0, 0.5), // Shadow color
                                      offset: Offset(2.0, 2.0), // Shadow offset
                                      blurRadius: 3.0, // Shadow blur radius
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Container(
                                  width: 211,
                                  height: 43,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFFFFF), // Red color
                                    borderRadius: BorderRadius.circular(
                                        6.4), // Adjust container border radius
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 4),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // // Container for the image
                                        // Container(
                                        //   alignment: Alignment.center,
                                        Transform.translate(
                                          offset: const Offset(0,
                                              4), // Move the image down by 4 pixels
                                          child: Image.asset(
                                            'assets/images/Group 533.png', // Replace with your image path
                                            width: 30, // Adjust width as needed
                                            height:
                                                30.02, // Adjust height as needed
                                          ),
                                        ),
                                        const SizedBox(width: 6.0),
                                        // Container for the text
                                        Container(
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'Click to Subscribe',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Color(
                                                  0xFFFF0000), // Text color inside the button
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Official Netflix Trailer",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "HBO Max 10 mins trailer",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "S3, episode 4...leaked!",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "15 mins sneak peek!!",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Season 3, episode 4",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "15mins sneak peek!!",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(
                height:
                    64), // Space between the existing text and gradient text

            // Centered gradient text with white lines
            Center(
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [
                        Color(0xFF9A1398),
                        Color(0xFFFA3A60),
                        Color(0xFFFEBF40),
                      ], // Gradient colors
                      tileMode: TileMode.mirror,
                    ).createShader(bounds);
                  },
                  child: const Text(
                    'We think you will like this',
                    style: TextStyle(
                      fontFamily: 'Anton',
                      fontWeight: FontWeight.w400,
                      fontSize: 24, // Adjust font size as needed
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
            ),

            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Official Netflix Trailer",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 13,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "HBO Max 10 mins trailer",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "S3, episode 4...leaked!",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "15 mins sneak peek!!",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Season 3, episode 4",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 160,
                    child: Stack(
                        clipBehavior:
                            Clip.none, // Ensures the content can overflow
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius:
                                    BorderRadius.circular(7), // Rounded corners
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  'assets/images/Group 538.png', // Bottom image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30, // Adjust as needed
                            left: 52, // Adjust as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  7), // Same radius for consistency
                              child: Image.asset(
                                'assets/images/icons8_play_button_circled_1 2.png', // Top image
                                height: 50, // Adjust size as needed
                                width: 50, // Adjust size as needed
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "15mins sneak peek!!",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 16,
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ut ipsum in non tincidunt\nlobortis id. Matti matti mi\ncras fusce congue.....",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            // Underline
                            Positioned(
                              bottom: -1, // Adjust based on your requirement
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 2, // Adjust thickness
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
                            ShaderMask(
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
                                "Watch trailer here",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),

            const SizedBox(height: 64),
            Padding(
                padding: const EdgeInsets.only(left: 16),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 4.0),
                          const Text(
                            'Return to the top',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Roboto',
                            ),
                          ),
                          const SizedBox(
                              width: 8.0), // Space between text and image

                          // Image widget
                          Image.asset(
                            'assets/images/Vector.png', // Replace with your image path
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                          ),
                        ],
                      ),
                    ))),
          ]),
        ]),
      ),
      backgroundColor: Color(0xFF121212),
    );
  }
}
