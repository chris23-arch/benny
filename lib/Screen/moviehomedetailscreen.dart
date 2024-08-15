// ignore_for_file: prefer_final_fields

import 'package:benny/Screen/watchtrailerscreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({super.key, required String movieImage});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  TextEditingController _controller = TextEditingController();
  FocusNode _focusNode = FocusNode();
  bool _isTextFieldFocused = false;
  bool _isButtonVisible = false;

  @override
  void initState() {
    super.initState();

    // Listen to text changes
    _controller.addListener(() {
      setState(() {
        _isButtonVisible = _controller.text.isNotEmpty;
      });
    });

    // Listen to focus changes
    _focusNode.addListener(() {
      setState(() {
        _isTextFieldFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onSearchPressed() {
    setState(() {
      _isButtonVisible = false;
    });
    _focusNode.unfocus(); // Remove focus from the text field
  }

  final List<String> moreImages = [
    'assets/images/Bridgerton-1 1.png',
    'assets/images/Bridgerton 1.png',
    'assets/images/97fxpynrigp81 1.png',
    'assets/images/michaela-stirling-bridgerton-season-3-666c6de8a9118 1.png',
    // Add more image paths as needed
  ];

  final List<String> additionalImages = [
    'assets/images/Group 518.png',
    'assets/images/Group 523.png',
    'assets/images/Group 522.png',
    'assets/images/Group 521.png',
  ];

  final List<String> movieImages = [
    'assets/images/SA_04_0810 1.png',
    'assets/images/SA_04_0810 1.png',
    'assets/images/SA_04_0810 1.png',
    'assets/images/SA_04_0810 1.png',
    'assets/images/SA_04_0810 1.png',
    'assets/images/SA_04_0810 1.png',
    'assets/images/SA_04_0810 1.png',
    'assets/images/SA_04_0810 1.png',
  ];

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
                  "Bridgerton",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 18.75 / 16,
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
        Image.asset(
          'assets/images/Group 525.png', // Replace with your image asset path
          width: MediaQuery.of(context).size.width, // Full width of the screen
          fit: BoxFit.cover, // Ensure the image covers the width
        ),
        const SizedBox(height: 16),

        // First Text with subtitle
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Bridgerton',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Roboto',
                    height: 18.75 / 16,
                  ),
                ),
              ),
            ),
            Container(
              width: 45, // Adjust the width as needed
              alignment: Alignment.centerLeft,
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [
                      Color(0xFF9A1398),
                      Color(0xFFFA3A60),
                      Color(0xFFFEBF40)
                    ], // Replace with your gradient colors
                  ).createShader(bounds);
                },
                child: const Text(
                  '7.3',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 19.36 / 16),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),

        // First Text with subtitle
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Series / Romance / 2h 40m / 2023',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF897677),
                  fontFamily: 'Roboto',
                  height: 14.06 / 12,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 30), // Spacer between rating and containers
// Containers Row
        Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Container(
                  width: 172,
                  height: 55,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF9A1398),
                        Color(0xFFFA3A60),
                        Color(0xFFFEBF40),
                      ], // Gradient colors for the first container
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  child: const Center(
                    child: Text(
                      'Watch Movie',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 16.41 / 14,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12), // Space between containers
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WatchTrailerScreen()),
                      );
                    },
                    child: Container(
                        width: 172,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40),
                            ], // Gradient colors for the border
                          ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(
                                2.0), // Adjust padding to control border width
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(
                                    0xFF212020), // Background color of the inner container
                                borderRadius: BorderRadius.circular(
                                    6.0), // Match the outer border radius minus the padding
                              ),
                              child: Center(
                                child: ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return const LinearGradient(
                                      colors: [
                                        Color(0xFF9A1398),
                                        Color(0xFFFA3A60),
                                        Color(0xFFFEBF40)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ).createShader(bounds);
                                  },
                                  child: const Text(
                                    'Watch Trailer',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 16.41 / 14,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                ),
                              ),
                            ))))
              ],
            )),

        const SizedBox(
            height:
                20), // Spacer between the first two containers and the second pair

        Padding(
            padding: const EdgeInsets.only(left: 16),
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
                          color: const Color(
                              0xFF212020), // Background color of the inner container
                          borderRadius: BorderRadius.circular(
                              6.0), // Match the outer border radius minus the padding
                        ),
                        child: Center(
                            child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              colors: [
                                Color(0xFF9A1398),
                                Color(0xFFFA3A60),
                                Color(0xFFFEBF40)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds);
                          },
                          child: const Text(
                            'Get Tickets',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 16.41 / 14,
                              fontFamily: "Roboto",
                            ),
                          ),
                        )))),
              ),

              const SizedBox(width: 12), // Space between containers

              Container(
                width: 172,
                height: 55,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF9A1398),
                      Color(0xFFFA3A60),
                      Color(0xFFFEBF40),
                    ], // Gradient colors for the border
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Center(
                  child: Text(
                    'Take Quiz',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                      height: 16.41 / 14,
                    ),
                  ),
                ),
              ),
            ])),
        const SizedBox(height: 24),

        // First Text with subtitle
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Inter',
                  height: 19.36 / 16,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),

        // First Text with subtitle
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 32,
                child: const Text(
                  'Lorem ipsum dolor sit amet consectetur. Fames et pulvinar at at  2\ncongue ac donec habitant semper. Diam leo aliquam ultricies\nmolestie penatibus tristique.',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFA1A1A1),
                    fontFamily: 'Roboto',
                    height: 11.72 / 10,
                  ),
                  maxLines: 3, // Limit to 3 lines
                  overflow:
                      TextOverflow.ellipsis, // Ellipsis (...) for overflow
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 31),

        // First Text with subtitle
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Cast',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Roboto',
                  height: 18.75 / 16,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),

        // First CarouselSlider for movie images
        Padding(
          padding: const EdgeInsets.only(left: 9.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 170, // Adjust height as needed
              viewportFraction: 0.3, // Show portion of the next image
              enlargeCenterPage: false,
              enableInfiniteScroll: false, // Optional: to stop infinite scroll
              scrollDirection: Axis.horizontal,
              initialPage: 0,
              padEnds: false,
            ),
            items: movieImages.asMap().entries.map((entry) {
              int index = entry.key;
              String imagePath = entry.value;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0).copyWith(
                  right: index == movieImages.length - 1
                      ? 16.0
                      : 12.0, // Add extra padding to the last item
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  imagePath,
                                  fit: BoxFit.cover,
                                  // width: 800, // Ensure the image takes up the full width
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Ashley Simone', // Replace with actual title
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Roboto',
                                  height: 11.72 / 10,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Katheryn Sharma', // Replace with actual subtitle
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Color(0xFFFFA0B3),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 9.38 / 8,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ]))),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 40),

        // First Text with subtitle
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Photos from movies scenes',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Roboto',
                  height: 18.75 / 16,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 12.0),
        // First CarouselSlider for movie images
        Padding(
          padding: const EdgeInsets.only(left: 9.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 170, // Adjust height as needed
              viewportFraction: 0.7, // Show portion of the next image
              enlargeCenterPage: false,
              enableInfiniteScroll: false, // Optional: to stop infinite scroll
              scrollDirection: Axis.horizontal,
              initialPage: 0,
              padEnds: false,
            ),
            items: moreImages.asMap().entries.map((entry) {
              int index = entry.key;
              String imagePath = entry.value;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0).copyWith(
                  right: index == moreImages.length - 1
                      ? 16.0
                      : 8.0, // Add extra padding to the last item
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      // width: 800, // Ensure the image takes up the full width
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),

        const SizedBox(height: 40),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ShaderMask(
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
                "Leave a review",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 18.75 / 16,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ]),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19.0),
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: _isTextFieldFocused
                    ? 165.0
                    : 50.0, // Change these values as needed
                child: Stack(children: [
                  TextField(
                    controller: _controller,
                    maxLines: _isTextFieldFocused ? 5 : 1,
                    focusNode: _focusNode,
                    decoration: InputDecoration(
                      hintText: 'Say something about the movie...',
                      hintStyle: const TextStyle(
                        color: Color(0XFF888888),
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 18.75 / 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: const BorderSide(
                          color: Color(
                              0xFF424242), // Set your desired border color here
                          width: 1.0, // Set the width of the border
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: const BorderSide(
                          color: Color(
                              0xFF424242), // Set the border color when the TextField is focused
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: const BorderSide(
                          color: Color(
                              0xFF424242), // Set the border color when the TextField is enabled
                          width: 1.0,
                        ),
                      ),
                      filled: true,
                      fillColor: const Color(0xFF1C1C1C),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 18,
                    bottom: _isTextFieldFocused ? 120 : 14,
                    child: Visibility(
                      visible:
                          !_isButtonVisible, // Make the icon invisible when the text field is focused

                      child: const Icon(Icons.edit, color: Color(0XFF8D8D8D)),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: _isButtonVisible
                    ? GestureDetector(
                        onTap: _onSearchPressed,
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 105,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF9A1398),
                                Color(0xFFFA3A60),
                                Color(0xFFFEBF40)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Text(
                            'Post review',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: "Roboto",
                              height: 16.41 / 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ))
                    : null,
              ),
            ],
          ),
        ),

        const SizedBox(height: 40),

        // First Text with subtitle
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Roboto',
                    height: 18.75 / 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: Container(
                  width: 55, // Adjust the width as needed
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFCFCFCF),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 14.06 / 12,
                      decoration:
                          TextDecoration.underline, // underline the links
                      decorationColor: Color(0xFFCFCFCF),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 3),
        // Custom container with text and icons
        Column(children: [
          Container(
            width: 450, // Specify width here
            height: 165, // Specify height here
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A), // Background color
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/Ellipse 1.png', // Replace with your image path
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 9),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jane Doe',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            height: 16.41 / 14,
                          ),
                        ),
                        Text(
                          '06/07',
                          style: TextStyle(
                            color: Color(0xFF9F9F9F),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            height: 11.72 / 10,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Vector (7).png', // Replace with your like icon path
                          width: 18,
                          height: 21,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Vector (8).png', // Replace with your share icon path
                          width: 19,
                          height: 19,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  'Lorem ipsum dolor sit amet consectetur. Aenean ut suspendisse vitae laoreet amet. Mattis nullam pharetra sed gravida amet ullamcorper. Amet ac elit at tortor fringilla ut nibh tincidunt purus. Condimentum eget lacinia lectus nibh sapien aenean.',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 14.06 / 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          // Custom container with text and icons
          Container(
            width: 450, // Specify width here
            height: 165, // Specify height here
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A), // Background color
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/Ellipse 1.png', // Replace with your image path
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 9),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jane Doe',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            height: 16.41 / 14,
                          ),
                        ),
                        Text(
                          '06/07',
                          style: TextStyle(
                            color: Color(0xFF9F9F9F),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            height: 11.72 / 10,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Vector (7).png', // Replace with your like icon path
                          width: 18,
                          height: 21,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Vector (8).png', // Replace with your share icon path
                          width: 19,
                          height: 19,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  'Lorem ipsum dolor sit amet consectetur. Aenean ut suspendisse vitae laoreet amet. Mattis nullam pharetra sed gravida amet ullamcorper. Amet ac elit at tortor fringilla ut nibh tincidunt purus. Condimentum eget lacinia lectus nibh sapien aenean.',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 14.06 / 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          // Custom container with text and icons
          Container(
            width: 450, // Specify width here
            height: 165, // Specify height here
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A), // Background color
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/Ellipse 1.png', // Replace with your image path
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 9),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jane Doe',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            height: 16.41 / 14,
                          ),
                        ),
                        Text(
                          '06/07',
                          style: TextStyle(
                            color: Color(0xFF9F9F9F),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            height: 11.72 / 10,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Vector (7).png', // Replace with your like icon path
                          width: 18,
                          height: 21,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Vector (8).png', // Replace with your share icon path
                          width: 19,
                          height: 19,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  'Lorem ipsum dolor sit amet consectetur. Aenean ut suspendisse vitae laoreet amet. Mattis nullam pharetra sed gravida amet ullamcorper. Amet ac elit at tortor fringilla ut nibh tincidunt purus. Condimentum eget lacinia lectus nibh sapien aenean.',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 14.06 / 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ]),
        const SizedBox(height: 40),

        // First Text with subtitle
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Watch videos reviews and reaction',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Roboto',
                      height: 18.75 / 16,
                    ),
                  ),
                ),
              ]),
        ),
        const SizedBox(height: 12.0),
        // First CarouselSlider for movie images
        Padding(
          padding: const EdgeInsets.only(left: 9.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 170, // Adjust height as needed
              viewportFraction: 0.7, // Show portion of the next image
              enlargeCenterPage: false,
              enableInfiniteScroll: false, // Optional: to stop infinite scroll
              scrollDirection: Axis.horizontal,
              initialPage: 0,
              padEnds: false,
            ),
            items: additionalImages.asMap().entries.map((entry) {
              int index = entry.key;
              String imagePath = entry.value;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0).copyWith(
                  right: index == additionalImages.length - 1
                      ? 16.0
                      : 8.0, // Add extra padding to the last item
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      // width: 800, // Ensure the image takes up the full width
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),

        const SizedBox(height: 48),
        Container(
            width: 350,
            height: 184,
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A),
              borderRadius: BorderRadius.circular(4),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                    'Fun Facts',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      height: 18.75 / 16,
                    ),
                  )),
              const SizedBox(height: 16),
              const Text(
                'Do you know that the actor who plays\nDaphne Bridgerton, initially auditioned for\nthe role of Francesca Bridgerton',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 226,
                height: 40,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF9A1398),
                      Color(0xFFFA3A60),
                      Color(0xFFFEBF40)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    'Take Quiz and Win',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      height: 18.75 / 16,
                    ),
                  ),
                ),
              ),
            ])),
        const SizedBox(height: 100),
      ])),
      backgroundColor: const Color(0xFF212020),
    );
  }
}
