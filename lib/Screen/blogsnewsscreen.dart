import 'package:benny/Screen/blogdetailsscreen.dart';
import 'package:flutter/material.dart';

class BlogsNewsScreen extends StatefulWidget {
  const BlogsNewsScreen({super.key});

  @override
  State<BlogsNewsScreen> createState() => _BlogsNewsScreenState();
}

class _BlogsNewsScreenState extends State<BlogsNewsScreen> {
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
                      "Blog and News",
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
                  "The latest industry news, interviews, gossips and trends.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
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
          const SizedBox(height: 32),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BlogDetailsScreen()),
                );
              },
              child: Image.asset(
                'assets/images/Group 526.png', // Replace with your image asset path
                height: 203, // Adjust the height of the image here
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BlogDetailsScreen()),
                );
              },
              child: Padding(
                  padding: const EdgeInsets.only(left: 125),
                  child: Transform.translate(
                    offset:
                        const Offset(0, -10), // Move the image up by 10 pixels
                    child: Image.asset(
                      'assets/images/Group 528.png', // Replace with your image asset path
                      height: 30, // Adjust the height of the image here
                      width: 134,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BlogDetailsScreen()),
                  );
                },
                // SizedBox(height: 12),
                child: const Padding(
                  padding: EdgeInsets.only(left: 99, top: 4),
                  child: Text(
                    'ANTHONY AND KATE',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Anton',
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BlogDetailsScreen()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 42, top: 8),
                child: Text(
                  'HEATING THING UP ON SET',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Anton',
                    fontSize: 32,
                    height: 48.17 / 32,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BlogDetailsScreen()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 53, top: 6),
                  child: Text(
                    'OF BRIDGERTON....Scandalous!',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Anton',
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BlogDetailsScreen()),
                );
              },
              child: const Padding(
                  padding: EdgeInsets.only(left: 88, top: 12),
                  child: Text(
                    '08- January - 2024, 9:23 AM',
                    style: TextStyle(
                      color: Color(0xFFCDCDCD),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  )),
            ),

            const SizedBox(height: 70),
            // Container with Image and Texts
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BlogDetailsScreen()),
                  );
                },
                child: Image.asset(
                  'assets/images/Group 526 (2).png', // Replace with your image asset path
                  height: 203, // Adjust the height of the image here
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BlogDetailsScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 83, top: 0),
                  child: Transform.translate(
                    offset: const Offset(0, -20),
                    child: const Text(
                      'SEE WHO CAST MEMBER IS',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Anton',
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BlogDetailsScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 59, top: 0),
                  child: Transform.translate(
                    offset: const Offset(0, -13),
                    child: const Text(
                      'SECRETELY MARRIED TO',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Anton',
                        fontWeight: FontWeight.w400,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BlogDetailsScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 125, top: 6),
                  child: Transform.translate(
                    offset: const Offset(0, -16),
                    child: const Text(
                      'THE DIRECTOR!',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Anton',
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BlogDetailsScreen()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 18, top: 0),
                  child: Text(
                    'Elite Bridgerton cast talk about how their family\nand spouses reacted to their scene in episode\nfive of Bridgerton season 3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFCDCDCD),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BlogDetailsScreen()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 85, top: 12),
                  child: Text(
                    '08- January - 2024, 9:23 AM',
                    style: TextStyle(
                      color: Color(0xFFCDCDCD),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        // Handle tap on the text container
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BlogDetailsScreen()),
                        );
                      },
                      child: Container(
                          height: 75,
                          width: 350,
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Color(0xFF747474), // Top border color
                                width: 2.0, // Top border width
                              ),
                              bottom: BorderSide(
                                color: Color(0xFF747474), // Bottom border color
                                width: 2.0, // Bottom border width
                              ),
                            ),
                            // border: Border.all(color: Colors.green, width: 2),
                            color: Color(0xFF121212),
                            // borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 11, top: 7),
                            child: Text(
                              'Lovers quarrel and marital spat\ndelays filming on set',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Anton',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                          )),
                    )),
                    const SizedBox(
                        width: 0), // Space between the container and image
                    GestureDetector(
                        onTap: () {
                          // Handle tap on the text container
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BlogDetailsScreen()),
                          );
                        },
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Transform.translate(
                              offset: const Offset(-25,
                                  0), // Adjust this value to move the image to the left
                              child: Image.asset(
                                'assets/images/arrow-down.png', // Replace with your image asset path
                                width: 25, // Adjust width as needed
                                height: 25, // Adjust height as needed
                              ),
                            )))
                  ],
                ),
              ),

              //SizedBox(height: 0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 0),
                child: Row(children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      // Handle tap on the text container
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogDetailsScreen()),
                      );
                    },
                    child: Container(
                      height: 75,
                      width: 350,
                      decoration: const BoxDecoration(
                        border: Border(
                          // top: BorderSide(
                          //   color: Color(0xFF747474), // Top border color
                          //   width: 2.0, // Top border width
                          // ),
                          bottom: BorderSide(
                            color: Color(0xFF747474), // Bottom border color
                            width: 2.0, // Bottom border width
                          ),
                        ),
                        // border: Border.all(color: Colors.green, width: 2),
                        color: Color(0xFF121212),
                        // borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 11, top: 7),
                        child: Text(
                          'Marry an actress....Never! See\nreason why',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  )),
                  const SizedBox(
                      width: 0), // Space between the container and image
                  GestureDetector(
                      onTap: () {
                        // Handle tap on the text container
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BlogDetailsScreen()),
                        );
                      },
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Transform.translate(
                            offset: const Offset(-25,
                                0), // Adjust this value to move the image to the left
                            child: Image.asset(
                              'assets/images/arrow-down.png', // Replace with your image asset path
                              width: 25, // Adjust width as needed
                              height: 25, // Adjust height as needed
                            ),
                          )))
                ]),
              ),

              const SizedBox(height: 100),
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
            color: Color.fromRGBO(0, 0, 0, 0.5), // Shadow color
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


              const SizedBox(height: 80),
              // Container with Image and Texts
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                GestureDetector(
                  onTap: () {
                    // Handle tap on the text container
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlogDetailsScreen()),
                    );
                  },
                  child: Image.asset(
                    'assets/images/Group 526 (2).png', // Replace with your image asset path
                    height: 203, // Adjust the height of the image here
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle tap on the text container
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlogDetailsScreen()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 89, top: 0),
                    child: Transform.translate(
                        offset: const Offset(0, -20),
                        child: const Text(
                          'SEE WHO CAST MEMBER IS',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                          ),
                        )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle tap on the text container
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlogDetailsScreen()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 59, top: 0),
                    child: Transform.translate(
                      offset: const Offset(0, -13),
                      child: const Text(
                        'SECRETELY MARRIED TO',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Anton',
                          fontWeight: FontWeight.w400,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      // Handle tap on the text container
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogDetailsScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 125, top: 6),
                      child: Transform.translate(
                        offset: const Offset(0, -16),
                        child: const Text(
                          'THE DIRECTOR!',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Anton',
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    // Handle tap on the text container
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlogDetailsScreen()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 18, top: 0),
                    child: Text(
                      'Elite Bridgerton cast talk about how their family\nand spouses reacted to their scene in episode\nfive of Bridgerton season 3',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFCDCDCD),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle tap on the text container
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlogDetailsScreen()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 87, top: 12),
                    child: Text(
                      'Link to full video on Youtube',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFE82C3B),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        decoration:
                            TextDecoration.underline, // Underline the text
                        decorationColor:
                            Color(0xFFE82C3B), // Same color as the text
                      ),
                      maxLines: 1, // Ensure text stays on one line
                      overflow:
                          TextOverflow.ellipsis, // Handle overflow if necessary
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  GestureDetector(
                    onTap: () {
                      // Handle tap on the text container
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogDetailsScreen()),
                      );
                    },
                    child: Image.asset(
                      'assets/images/Group 526 (3).png', // Replace with your image asset path
                      height: 203, // Adjust the height of the image here
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle tap on the text container
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogDetailsScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 96),
                      child: Transform.translate(
                        offset: const Offset(
                            0, -10), // Move the image up by 10 pixels
                        child: Image.asset(
                          'assets/images/Group 528 (2).png', // Replace with your image asset path
                          height: 25, // Adjust the height of the image here
                          width: 209,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      // Handle tap on the text container
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogDetailsScreen()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 88, top: 4),
                      child: Text(
                        'I AM RETIRING, ITS TOO',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Anton',
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          height: 36.13 / 24,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle tap on the text container
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogDetailsScreen()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 55, top: 8),
                      child: Text(
                        'HARD! One of Hollywood`s',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Anton',
                          fontWeight: FontWeight.w400,
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle tap on the text container
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogDetailsScreen()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 114, top: 6),
                      child: Text(
                        'finest declares.',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Anton',
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle tap on the text container
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogDetailsScreen()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 85, top: 12),
                      child: Text(
                        '08- January - 2024, 9:23 AM',
                        style: TextStyle(
                          color: Color(0xFFCDCDCD),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                  // SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 40),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                              onTap: () {
                                // Handle tap on the text container
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BlogDetailsScreen()),
                                );
                              },
                              child: Container(
                                height: 75,
                                width: 350,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color:
                                          Color(0xFF747474), // Top border color
                                      width: 2.0, // Top border width
                                    ),
                                    bottom: BorderSide(
                                      color: Color(
                                          0xFF747474), // Bottom border color
                                      width: 2.0, // Bottom border width
                                    ),
                                  ),
                                  // border: Border.all(color: Colors.green, width: 2),
                                  color: Color(0xFF121212),
                                  // borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 11, top: 7),
                                  child: Text(
                                    'Lovers quarrel and marital spat\ndelays filming on set',
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontFamily: 'Anton',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        const SizedBox(
                            width: 0), // Space between the container and image
                        GestureDetector(
                            onTap: () {
                              // Handle tap on the text container
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BlogDetailsScreen()),
                              );
                            },
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Transform.translate(
                                  offset: const Offset(-25,
                                      0), // Adjust this value to move the image to the left
                                  child: Image.asset(
                                    'assets/images/arrow-down.png', // Replace with your image asset path
                                    width: 25, // Adjust width as needed
                                    height: 25, // Adjust height as needed
                                  ),
                                )))
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 0),
                    child: Row(children: [
                      Expanded(
                        child: GestureDetector(
                            onTap: () {
                              // Handle tap on the text container
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BlogDetailsScreen()),
                              );
                            },
                            child: Container(
                              height: 75,
                              width: 350,
                              decoration: const BoxDecoration(
                                border: Border(
                                  // top: BorderSide(
                                  //   color: Color(0xFF747474), // Top border color
                                  //   width: 2.0, // Top border width
                                  // ),
                                  bottom: BorderSide(
                                    color: Color(
                                        0xFF747474), // Bottom border color
                                    width: 2.0, // Bottom border width
                                  ),
                                ),
                                // border: Border.all(color: Colors.green, width: 2),
                                color: Color(0xFF121212),
                                // borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 11, top: 7),
                                child: Text(
                                  'Marry an actress....Never! See\nreason why',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'Anton',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            )),
                      ),
                      const SizedBox(
                          width: 0), // Space between the container and image
                      GestureDetector(
                          onTap: () {
                            // Handle tap on the text container
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BlogDetailsScreen()),
                            );
                          },
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Transform.translate(
                                offset: const Offset(-25,
                                    0), // Adjust this value to move the image to the left
                                child: Image.asset(
                                  'assets/images/arrow-down.png', // Replace with your image asset path
                                  width: 25, // Adjust width as needed
                                  height: 25, // Adjust height as needed
                                ),
                              )))
                    ]),
                  ),

                  const SizedBox(height: 100),
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
            color: Color.fromRGBO(0, 0, 0, 0.5), // Shadow color
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

                  const SizedBox(height: 100),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle tap on the text container
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BlogDetailsScreen()),
                            );
                          },
                          child: Image.asset(
                            'assets/images/Group 526.png', // Replace with your image asset path
                            height: 203, // Adjust the height of the image here
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle tap on the text container
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BlogDetailsScreen()),
                            );
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(left: 125),
                              child: Transform.translate(
                                offset: const Offset(
                                    0, -10), // Move the image up by 10 pixels
                                child: Image.asset(
                                  'assets/images/Group 528.png', // Replace with your image asset path
                                  height:
                                      30, // Adjust the height of the image here
                                  width: 134,
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),

                        GestureDetector(
                          onTap: () {
                            // Handle tap on the text container
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BlogDetailsScreen()),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(left: 99, top: 4),
                            child: Text(
                              'ANTHONY AND KATE',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Anton',
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle tap on the text container
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BlogDetailsScreen()),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(left: 42, top: 8),
                            child: Text(
                              'HEATING THING UP ON SET',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Anton',
                                fontWeight: FontWeight.w400,
                                fontSize: 32,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle tap on the text container
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BlogDetailsScreen()),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(left: 53, top: 6),
                            child: Text(
                              'OF BRIDGERTON....Scandalous!',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Anton',
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle tap on the text container
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BlogDetailsScreen()),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(left: 88, top: 12),
                            child: Text(
                              '08- January - 2024, 9:23 AM',
                              style: TextStyle(
                                color: Color(0xFFCDCDCD),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                            height:
                                40), // Space between the existing text and gradient text

                        // Centered gradient text with white lines
                        Center(
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                              width: 68, // Width of the left line
                              height: 1,
                              color: const Color(0xFFD9D9D9),
                            ),
                            const SizedBox(
                                width:
                                    10), // Space between the line and gradient text
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
                                'More News and Trends',
                                style: TextStyle(
                                  fontFamily: 'Anton',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20, // Adjust font size as needed
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                                width:
                                    10), // Space between the gradient text and line
                            Container(
                              width: 68, // Width of the right line
                              height: 1,
                              color: const Color(0xFFD9D9D9),
                            ),
                          ]),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 16),
                          child: Row(children: [
                            Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    // Handle tap on the text container
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BlogDetailsScreen()),
                                    );
                                  },
                                  child: Container(
                                    height: 75,
                                    width: 350,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(
                                              0xFF747474), // Top border color
                                          width: 2.0, // Top border width
                                        ),
                                        bottom: BorderSide(
                                          color: Color(
                                              0xFF747474), // Bottom border color
                                          width: 2.0, // Bottom border width
                                        ),
                                      ),
                                      // border: Border.all(color: Colors.green, width: 2),
                                      color: Color(0xFF121212),
                                      // borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(left: 11, top: 7),
                                      child: Text(
                                        'Marry an actress....Never! See\nreason why',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontFamily: 'Anton',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            const SizedBox(
                                width:
                                    0), // Space between the container and image
                            GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Transform.translate(
                                      offset: const Offset(-25,
                                          0), // Adjust this value to move the image to the left
                                      child: Image.asset(
                                        'assets/images/arrow-down.png', // Replace with your image asset path
                                        width: 25, // Adjust width as needed
                                        height: 25, // Adjust height as needed
                                      ),
                                    )))
                          ]),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 0),
                          child: Row(children: [
                            Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    // Handle tap on the text container
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BlogDetailsScreen()),
                                    );
                                  },
                                  child: Container(
                                    height: 75,
                                    width: 350,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        // top: BorderSide(
                                        //   color: Color(0xFF747474), // Top border color
                                        //   width: 2.0, // Top border width
                                        // ),
                                        bottom: BorderSide(
                                          color: Color(
                                              0xFF747474), // Bottom border color
                                          width: 2.0, // Bottom border width
                                        ),
                                      ),
                                      // border: Border.all(color: Colors.green, width: 2),
                                      color: Color(0xFF121212),
                                      // borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(left: 11, top: 7),
                                      child: Text(
                                        'Marry an actress....Never! See\nreason why',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontFamily: 'Anton',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            const SizedBox(
                                width:
                                    0), // Space between the container and image
                            GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Transform.translate(
                                      offset: const Offset(-25,
                                          0), // Adjust this value to move the image to the left
                                      child: Image.asset(
                                        'assets/images/arrow-down.png', // Replace with your image asset path
                                        width: 25, // Adjust width as needed
                                        height: 25, // Adjust height as needed
                                      ),
                                    ))),
                          ]),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 0),
                          child: Row(children: [
                            Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    // Handle tap on the text container
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BlogDetailsScreen()),
                                    );
                                  },
                                  child: Container(
                                    height: 75,
                                    width: 350,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        // top: BorderSide(
                                        //   color: Color(0xFF747474), // Top border color
                                        //   width: 2.0, // Top border width
                                        // ),
                                        bottom: BorderSide(
                                          color: Color(
                                              0xFF747474), // Bottom border color
                                          width: 2.0, // Bottom border width
                                        ),
                                      ),
                                      // border: Border.all(color: Colors.green, width: 2),
                                      color: Color(0xFF121212),
                                      // borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(left: 11, top: 7),
                                      child: Text(
                                        'Marry an actress....Never! See\nreason why',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontFamily: 'Anton',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            const SizedBox(
                                width:
                                    0), // Space between the container and image
                            GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Transform.translate(
                                      offset: const Offset(-25,
                                          0), // Adjust this value to move the image to the left
                                      child: Image.asset(
                                        'assets/images/arrow-down.png', // Replace with your image asset path
                                        width: 25, // Adjust width as needed
                                        height: 25, // Adjust height as needed
                                      ),
                                    )))
                          ]),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 0),
                          child: Row(children: [
                            Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    // Handle tap on the text container
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BlogDetailsScreen()),
                                    );
                                  },
                                  child: Container(
                                    height: 75,
                                    width: 350,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        // top: BorderSide(
                                        //   color: Color(0xFF747474), // Top border color
                                        //   width: 2.0, // Top border width
                                        // ),
                                        bottom: BorderSide(
                                          color: Color(
                                              0xFF747474), // Bottom border color
                                          width: 2.0, // Bottom border width
                                        ),
                                      ),
                                      // border: Border.all(color: Colors.green, width: 2),
                                      color: Color(0xFF121212),
                                      // borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(left: 11, top: 7),
                                      child: Text(
                                        'Marry an actress....Never! See\nreason why',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontFamily: 'Anton',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            const SizedBox(
                                width:
                                    0), // Space between the container and image
                            GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Transform.translate(
                                      offset: const Offset(-25,
                                          0), // Adjust this value to move the image to the left
                                      child: Image.asset(
                                        'assets/images/arrow-down.png', // Replace with your image asset path
                                        width: 25, // Adjust width as needed
                                        height: 25, // Adjust height as needed
                                      ),
                                    ))),
                          ]),
                        ),

                        const SizedBox(
                            height:
                                80), // Space between the existing text and gradient text

                        // Centered gradient text with white lines
                        Center(
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                              width: 68, // Width of the left line
                              height: 1,
                              color: const Color(0xFFD9D9D9),
                            ),
                            const SizedBox(
                                width:
                                    10), // Space between the line and gradient text
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
                                'Most Popular Today',
                                style: TextStyle(
                                  fontFamily: 'Anton',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20, // Adjust font size as needed
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                                width:
                                    10), // Space between the gradient text and line
                            Container(
                              width: 68, // Width of the right line
                              height: 1,
                              color: const Color(0xFFD9D9D9),
                            ),
                          ]),
                        ),
                        const SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                                  height: 120,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Marry an\nactress....Never! See\nreason why",
                                        style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontSize: 16,
                                          fontFamily: 'Anton',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        "9:23 AM",
                                        style: TextStyle(
                                          color: Color(0XFFCDCDCD),
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(height: 8),
                                      Stack(
                                        children: [
                                          // Underline
                                          Positioned(
                                            bottom:
                                                -1, // Adjust based on your requirement
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
                                            shaderCallback: (bounds) =>
                                                const LinearGradient(
                                              colors: [
                                                Color(0xFF9A1398),
                                                Color(0xFFFA3A60),
                                                Color(0xFFFEBF40)
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ).createShader(bounds),
                                            child: const Text(
                                              "Click to see full story",
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
                              GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                                  height: 120,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Marry an\nactress....Never! See\nreason why",
                                        style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontSize: 16,
                                          fontFamily: 'Anton',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        "9:23 AM",
                                        style: TextStyle(
                                          color: Color(0XFFCDCDCD),
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(height: 8),
                                      Stack(
                                        children: [
                                          // Underline
                                          Positioned(
                                            bottom:
                                                -1, // Adjust based on your requirement
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
                                            shaderCallback: (bounds) =>
                                                const LinearGradient(
                                              colors: [
                                                Color(0xFF9A1398),
                                                Color(0xFFFA3A60),
                                                Color(0xFFFEBF40)
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ).createShader(bounds),
                                            child: const Text(
                                              "Click to see full story",
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
                              GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                                  height: 120,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Marry an\nactress....Never! See\nreason why",
                                        style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontSize: 16,
                                          fontFamily: 'Anton',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        "9:23 AM",
                                        style: TextStyle(
                                          color: Color(0XFFCDCDCD),
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(height: 8),
                                      Stack(
                                        children: [
                                          // Underline
                                          Positioned(
                                            bottom:
                                                -1, // Adjust based on your requirement
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
                                            shaderCallback: (bounds) =>
                                                const LinearGradient(
                                              colors: [
                                                Color(0xFF9A1398),
                                                Color(0xFFFA3A60),
                                                Color(0xFFFEBF40)
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ).createShader(bounds),
                                            child: const Text(
                                              "Click to see full story",
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
                              GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/Bridgerton-1 2.png', // Replace with your image asset path
                                  height: 120,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  // Handle tap on the text container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BlogDetailsScreen()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Marry an\nactress....Never! See\nreason why",
                                        style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontSize: 16,
                                          fontFamily: 'Anton',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        "9:23 AM",
                                        style: TextStyle(
                                          color: Color(0XFFCDCDCD),
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(height: 8),
                                      Stack(
                                        children: [
                                          // Underline
                                          Positioned(
                                            bottom:
                                                -1, // Adjust based on your requirement
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
                                            shaderCallback: (bounds) =>
                                                const LinearGradient(
                                              colors: [
                                                Color(0xFF9A1398),
                                                Color(0xFFFA3A60),
                                                Color(0xFFFEBF40)
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ).createShader(bounds),
                                            child: const Text(
                                              "Click to see full story",
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
                                ),
                              ))
                            ],
                          ),
                        ),

                        const SizedBox(height: 48),
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
                                          width:
                                              8.0), // Space between text and image

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
              ])
            ]),
          ]),
        ]),
      ),
      backgroundColor: const Color(0xFF121212),
    );
  }
}
