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
          preferredSize: Size.fromHeight(kToolbarHeight),
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
                title: Row(
                  children: [
                  Image.asset(
                    'assets/images/Vector (5).png', // Replace with your image asset path
                    height: 20,
                    width: 18,
                  ),
                  SizedBox(width: 12),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Color(0xFF9A1398),
                          Color(0xFFFA3A60),
                          Color(0xFFFEBF40)
                        ],
                      ).createShader(bounds);
                    },
                    child: Text(
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
            padding: EdgeInsets.symmetric(horizontal: 38.0),
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
                            Icon(Icons.search, color: Color(0XFF505050)),
                        // contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.0),
                          borderSide: const BorderSide(
                            color: Color(
                                0xFF505050), // Set your desired border color here
                            width: 2.0, // Set the width of the border
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF505050), // Set the border color when the TextField is focused
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.0),
                          borderSide: const BorderSide(
                            color: Color(
                                0xFF505050), // Set the border color when the TextField is enabled
                            width: 2.0,
                          ),
                        ),
                        filled: true,
                        fillColor: Color(0xFF212020),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),      
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          // Container with Image and Texts
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              width: 328, // Adjust the width of the container here
              height: 467,
              decoration: BoxDecoration(                                 
                color: Color(0xFF383838),   
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,         
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                    child: Image.asset(
                      'assets/images/Image.png', // Replace with your image asset path
                      height: 200, // Adjust the height of the image here
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40)
                            ], // Define your gradient colors here
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: Text(
                            'Hollywood',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Fans Click Bait',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                   decoration:
                                TextDecoration.underline, // Underline the text
                            decorationColor:
                                Color(0xFFFFFFFF), // Same color as the text
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Nicolas and Tom talk about how their family reacted to their scene in episode five of Bridgerton season 3.',
                          style: TextStyle(
                            color: Color(0xFFCDCDCD),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(height: 24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20 Jan 2022',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          // Container with Image and Texts
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              width: 328, // Adjust the width of the container here
              height: 467,
              decoration: BoxDecoration(
                color: Color(0xFF383838),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                    child: Image.asset(
                      'assets/images/Image.png', // Replace with your image asset path
                      height: 200, // Adjust the height of the image here
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40)
                            ], // Define your gradient colors here
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: Text(
                            'Hollywood',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Fans Click Bait',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                   decoration:
                                TextDecoration.underline, // Underline the text
                            decorationColor:
                                Color(0xFFFFFFFF), // Same color as the text
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Nicolas and Tom talk about how their family reacted to their scene in episode five of Bridgerton season 3.',
                          style: TextStyle(
                            color: Color(0xFFCDCDCD),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                         Column(
                          children: [
                            SizedBox(height: 24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20 Jan 2022',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                        
                          ]
                         )
                      ],
                    ),
                    
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 48),
          // New Container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Container(
              width: 700, // Adjust the width of the container here
              decoration: BoxDecoration(
                color: Color(0xFF383838),
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(color: Color(0xFF4C4C4C), width: 2.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Movie Streaming Channel',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Subscribe to our YouTube Channel for more updates',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            decoration:
                                TextDecoration.underline, // Underline the text
                            decorationColor:
                                Color(0xFFFF0000), // Same color as the text
                          ),
                          maxLines: 1, // Ensure text stays on one line
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow if necessary
                        ),
                        const SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {
                            // Handle tap event
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFF0000), // Red color
                              borderRadius: BorderRadius.circular(
                                  8.0), // Adjust container border radius
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 8),
                            child: Text(
                              'Subscribe',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Color(
                                    0xFFFFFFFF), // Text color inside the button
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 48),
          // Container with Image and Texts
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              width: 328, // Adjust the width of the container here
              height: 467,
              decoration: BoxDecoration(
                color: Color(0xFF383838),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                    child: Image.asset(
                      'assets/images/Image.png', // Replace with your image asset path
                      height: 200, // Adjust the height of the image here
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40)
                            ], // Define your gradient colors here
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: Text(
                            'Hollywood',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Fans Click Bait',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                     decoration:
                                TextDecoration.underline, // Underline the text
                            decorationColor:
                                Color(0xFFFFFFFF), // Same color as the text
                                ),
                              ),
                            ),
                           
                          ],
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Nicolas and Tom talk about how their family reacted to their scene in episode five of Bridgerton season 3.',
                          style: TextStyle(
                            color: Color(0xFFCDCDCD),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                       
                       
                            
                            SizedBox(height: 24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Text(
                                  '20 Jan 2022',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          
                        
                      ],
                    ),
                  ),
                ],
              ),
              
            ),
            
          ),
          SizedBox(height: 24),
          Padding(
              padding: EdgeInsets.only(left: 31),
              child: SizedBox(
                  width: 325,
                  height: 41,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF212020),
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(color: Color(0xFF747474)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 4.0),
                        Text(
                          'See more',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(
                            width:
                                12.0), // Add some spacing between the text and the image
                        Align(
                          alignment: Alignment
                              .centerLeft, // Align the image to the left
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top:
                                    5.0), // Adjust this value to move the image down

                            child: Image.asset(
                              'assets/images/Icon (1).png', // Path to your image asset
                              width:
                                  11.67, // Adjust the width of the image as needed
                              height:
                                  11.67, // Adjust the height of the image as needed
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))),
          SizedBox(height: 52),
        ]),
      ),
      backgroundColor: Color(0xFF212020),
    );
  }
}
