import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class QuizWinScreen extends StatefulWidget {
  const QuizWinScreen({super.key});

  @override
  State<QuizWinScreen> createState() => _QuizWinScreenState();
}

class _QuizWinScreenState extends State<QuizWinScreen> {
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
                title: Row(children: [
                  Image.asset(
                    'assets/images/Vector (5).png', // Replace with your image asset path
                    height: 20,
                    width: 18,
                  ),
                  const SizedBox(width: 12),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [
                          Color(0xFF9A1398),
                          Color(0xFFFA3A60),
                          Color(0xFFFEBF40)
                        ],
                      ).createShader(bounds);
                    },
                    child: const Text(
                      "Quiz and Win",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ]),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 24),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                child: Text(
                  "Take quizzes on your favorite movies,\nmovies starts,trends and win prizes!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              )),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48, // Adjust height
                    width: 293, // Adjust width
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Avatar',
                        hintStyle: const TextStyle(
                          color: Color(0XFF505050),
                        ),
                        prefixIcon:
                            const Icon(Icons.search, color: Color(0XFF505050)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.0),
                          borderSide: const BorderSide(
                            color: Color(
                                0xFF505050), // Set your desired border color here
                            width: 1.0, // Set the width of the border
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.0),
                          borderSide: const BorderSide(
                            color: Color(
                                0xFF505050), // Set the border color when the TextField is focused
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.0),
                          borderSide: const BorderSide(
                            color: Color(
                                0xFF505050), // Set the border color when the TextField is enabled
                            width: 1.0,
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xFF212020),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 32),
            child: Text(
              'Top searched quizzes',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 16), // Space before the gradient containers
          CarouselSlider(
            options: CarouselOptions(
              height: 32,
              viewportFraction: 0.3,
              enlargeCenterPage: false,
              enableInfiniteScroll: true,
              autoPlay: true,
              padEnds: false,
            ),
            items: [
              GradientContainer(text: 'House of Dragon'),
              GradientContainer(text: 'Game of Thrones'),
              GradientContainer(text: 'Avatar'),
              GradientContainer(text: 'Black Panther'),
            ],
          ),

          const SizedBox(height: 22),
          Container(
            height: 388,
            width: double.infinity,
            color: Color(0xFF2B2B2B),
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/bridgetron-netflix-cast-001-1564422754 1.png', // Replace with your image asset path
                      height: 203, // Adjust the height of the image here
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 12),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Guess the co-stars\ncorrectly and win the\nSuperfan badge!',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        '"I will stand with you between the\nheaven and the earth."',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(height: 32),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // // Container for the image
                                      // Container(
                                      //   alignment: Alignment.center,
                                      Transform.translate(
                                        offset: Offset(0,
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

          const SizedBox(height: 32),
          Container(
            height: 388,
            width: double.infinity,
            color: Color(0xFF2B2B2B),
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/bridgetron-netflix-cast-001-1564422754 1.png', // Replace with your image asset path
                      height: 203, // Adjust the height of the image here
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 12),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Guess the co-stars\ncorrectly and win the\nSuperfan badge!',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        '"I will stand with you between the\nheaven and the earth."',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),

          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
          const SizedBox(height: 32),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // // Container for the image
                                      // Container(
                                      //   alignment: Alignment.center,
                                      Transform.translate(
                                        offset: Offset(0,
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
          Container(
            height: 388,
            width: double.infinity,
            color: Color(0xFF2B2B2B),
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/bridgetron-netflix-cast-001-1564422754 1.png', // Replace with your image asset path
                      height: 203, // Adjust the height of the image here
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 12),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Guess the co-stars\ncorrectly and win the\nSuperfan badge!',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        '"I will stand with you between the\nheaven and the earth."',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),

          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
                Image.asset(
                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                  height: 120,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Identify Bridgerton\ncharacters based on\nthe fabrics they\nwear....should be fun",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 18),
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
                              "Take quiz and WIN!",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
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
        ]),
      ),
      backgroundColor: Color(0xFF121212),
    );
  }
}

class GradientContainer extends StatelessWidget {
  final String text;
  final double height;
  final double width;

  const GradientContainer({
    required this.text,
    this.height = 32, // Default height
    this.width = 123, // Default width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 3.0), // Add padding to the left
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 16.41 / 14,
              ),
            ),
          ),
        ));
  }
}
