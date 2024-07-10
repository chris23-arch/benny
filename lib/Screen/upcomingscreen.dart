import 'package:flutter/material.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({super.key});

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
   // Dummy list of trending movies
  final List<Map<String, String>> trendingMovies = [
    {
      'imagePath': 'assets/images/Frame 54.png',
      'title': 'Shrek',
      'subtitle': 'American/Animation',
      'rating': '7.3',
    },
    {
      'imagePath': 'assets/images/movie 1 1.png',
      'title': 'Us',
      'subtitle': 'American/Horror',
      'rating': '7.3',
    },
    {
      'imagePath': 'assets/images/black-panther-web 1.png',
      'title': 'Black Panther',
      'subtitle': 'American/Adventure',
      'rating': '7.3',
    },
    // Add more image paths as needed
    {
      'imagePath': 'assets/images/Frame 54.png',
      'title': 'Shrek',
      'subtitle': 'American/Animation',
      'rating': '7.3',
    },
    {
      'imagePath': 'assets/images/movie 1 1.png',
      'title': 'Us',
      'subtitle': 'American/Horror',
      'rating': '7.3',
    },
    {
      'imagePath': 'assets/images/black-panther-web 1.png',
      'title': 'Black Panther',
      'subtitle': 'American/Adventure',
      'rating': '7.3',
    },
     {
      'imagePath': 'assets/images/Frame 54.png',
      'title': 'Shrek',
      'subtitle': 'American/Animation',
      'rating': '7.3',
    },
    {
      'imagePath': 'assets/images/movie 1 1.png',
      'title': 'Us',
      'subtitle': 'American/Horror',
      'rating': '7.3',
    },
    {
      'imagePath': 'assets/images/black-panther-web 1.png',
      'title': 'Black Panther',
      'subtitle': 'American/Adventure',
      'rating': '7.3',
    },
  ];



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
                     Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)
                    ],
                  ).createShader(bounds);
                },
                child: Text(
                  "Upcoming",
                  style: TextStyle(
                   color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                 ),
                ]
              ),
              
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
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
                  color: Color(0xFF505050), // Set your desired border color here
                  width: 1.0, // Set the width of the border
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
                  color: Color(0xFF505050), // Set the border color when the TextField is enabled
                  width: 2.0,
                )
                
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
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "06 - May - 2035",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),

            SizedBox(height: 16), // Adjust spacing between text and container

            // Container with image and text
            Container(
              padding: EdgeInsets.only(top: 12.0, bottom: 8.0, left: 17.0, right: 27.0 ),
              width:
                  MediaQuery.of(context).size.width, // Full width of the screen
              constraints:
                  BoxConstraints(maxHeight: 158), // Max height of the container
                   decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF212020),
                    Color(0xFF2A2A2A),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Frame 54.png', // Replace with your image asset path
                    height: 140,
                    width: 86,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                      Text(
                        "Shrek Saves Fiona",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                       SizedBox(height: 4),
                          Text(
                            "American/Animation/1hr 45mins",
                            style: TextStyle(
                              color: Color(0XFFA7A7A7),
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                           SizedBox(height: 12),
                          Text(
                            "An ogre and a princess from an unlikely bong in this romance and adventure filled animated movie.",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                           SizedBox(height: 12),
                            Stack(
                            children: [
                              // Underline
                              Positioned(
                                bottom: -1, // Adjust based on your requirement
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 2, // Adjust thickness
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                ),
                              ),
                           ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds),
                          child: Text(
                            "Watch trailer",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Roboto',
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
                  )
                ],
              ),
                Positioned(
                    top: 5,
                    right: 20,
                    child: Image.asset(
                      'assets/images/Vector (4).png', // Replace with your top right image asset path
                      height: 15, // Adjust height as needed
                      width: 3, // Adjust width as needed
                    ),
                ),
          ],
        ),
      ),
      SizedBox(height: 5), // Adjust spacing between text and container

            // Container with image and text
            Container(
              padding: EdgeInsets.only(top: 12.0, bottom: 8.0, left: 17.0, right: 27.0 ),
              width:
                  MediaQuery.of(context).size.width, // Full width of the screen
              constraints:
                  BoxConstraints(maxHeight: 158), // Max height of the container
                   decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF121212),
                    Color(0xFF2A2A2A),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Frame 54.png', // Replace with your image asset path
                    height: 140,
                    width: 86,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                      Text(
                        "Shrek Saves Fiona",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                       SizedBox(height: 4),
                          Text(
                            "American/Animation/1hr 45mins",
                            style: TextStyle(
                              color: Color(0XFFA7A7A7),
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                           SizedBox(height: 12),
                          Text(
                            "An ogre and a princess from an unlikely bong in this romance and adventure filled animated movie.",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                           SizedBox(height: 12),
                            Stack(
                            children: [
                              // Underline
                              Positioned(
                                bottom: -1, // Adjust based on your requirement
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 2, // Adjust thickness
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                ),
                              ),
                           ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds),
                          child: Text(
                            "Watch trailer",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Roboto',
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
                  )
                ],
              ),
                Positioned(
                    top: 5,
                    right: 20,
                    child: Image.asset(
                      'assets/images/Vector (4).png', // Replace with your top right image asset path
                      height: 15, // Adjust height as needed
                      width: 3, // Adjust width as needed
                    ),
                )
          ],
        ),
      ),
      SizedBox(height: 5), // Adjust spacing between text and container

            // Container with image and text
            Container(
              padding: EdgeInsets.only(top: 12.0, bottom: 8.0, left: 17.0, right: 27.0 ),
              width:
                  MediaQuery.of(context).size.width, // Full width of the screen
              constraints:
                  BoxConstraints(maxHeight: 158), // Max height of the container
                   decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF121212),
                    Color(0xFF2A2A2A),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Frame 54.png', // Replace with your image asset path
                    height: 140,
                    width: 86,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                      Text(
                        "Shrek Saves Fiona",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                       SizedBox(height: 4),
                          Text(
                            "American/Animation/1hr 45mins",
                            style: TextStyle(
                              color: Color(0XFFA7A7A7),
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                           SizedBox(height: 12),
                          Text(
                            "An ogre and a princess from an unlikely bong in this romance and adventure filled animated movie.",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                           SizedBox(height: 12),
                            Stack(
                            children: [
                              // Underline
                              Positioned(
                                bottom: -1, // Adjust based on your requirement
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 2, // Adjust thickness
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                ),
                              ),
                           ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds),
                          child: Text(
                            "Watch trailer",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Roboto',
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
                  )
                ],
              ),
                Positioned(
                    top: 5,
                    right: 20,
                    child: Image.asset(
                      'assets/images/Vector (4).png', // Replace with your top right image asset path
                      height: 15, // Adjust height as needed
                      width: 3, // Adjust width as needed
                    ),
                )
          ],
        ),
      ),
      SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "06 - May - 2035",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),

            SizedBox(height: 16), // Adjust spacing between text and container

            // Container with image and text
            Container(
              padding: EdgeInsets.only(top: 12.0, bottom: 8.0, left: 17.0, right: 27.0 ),
              width:
                  MediaQuery.of(context).size.width, // Full width of the screen
              constraints:
                  BoxConstraints(maxHeight: 158), // Max height of the container
                   decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF121212),
                    Color(0xFF2A2A2A),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Frame 54.png', // Replace with your image asset path
                    height: 140,
                    width: 86,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                      Text(
                        "Shrek Saves Fiona",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                       SizedBox(height: 4),
                          Text(
                            "American/Animation/1hr 45mins",
                            style: TextStyle(
                              color: Color(0XFFA7A7A7),
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                           SizedBox(height: 12),
                          Text(
                            "An ogre and a princess from an unlikely bong in this romance and adventure filled animated movie.",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                           SizedBox(height: 12),
                            Stack(
                            children: [
                              // Underline
                              Positioned(
                                bottom: -1, // Adjust based on your requirement
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 2, // Adjust thickness
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                ),
                              ),
                           ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds),
                          child: Text(
                            "Watch trailer",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Roboto',
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
                  )
                ],
              ),
                Positioned(
                    top: 5,
                    right: 20,
                    child: Image.asset(
                      'assets/images/Vector (4).png', // Replace with your top right image asset path
                      height: 15, // Adjust height as needed
                      width: 3, // Adjust width as needed
                    ),
                )
          ],
        ),
      ),
      SizedBox(height: 5), // Adjust spacing between text and container

            // Container with image and text
            Container(
              padding: EdgeInsets.only(top: 12.0, bottom: 8.0, left: 17.0, right: 27.0 ),
              width:
                  MediaQuery.of(context).size.width, // Full width of the screen
              constraints:
                  BoxConstraints(maxHeight: 158), // Max height of the container
                   decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF121212),
                    Color(0xFF2A2A2A),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Frame 54.png', // Replace with your image asset path
                    height: 140,
                    width: 86,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                      Text(
                        "Shrek Saves Fiona",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                       SizedBox(height: 4),
                          Text(
                            "American/Animation/1hr 45mins",
                            style: TextStyle(
                              color: Color(0XFFA7A7A7),
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                           SizedBox(height: 12),
                          Text(
                            "An ogre and a princess from an unlikely bong in this romance and adventure filled animated movie.",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                           const SizedBox(height: 12),
                            Stack(
                            children: [
                              // Underline
                              Positioned(
                                bottom: -1, // Adjust based on your requirement
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 2, // Adjust thickness
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                ),
                              ),
                           ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds),
                          child: Text(
                            "Watch trailer",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Roboto',
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
                  )
                ],
              ),
                Positioned(
                    top: 5,
                    right: 20,
                    child: Image.asset(
                      'assets/images/Vector (4).png', // Replace with your top right image asset path
                      height: 15, // Adjust height as needed
                      width: 3, // Adjust width as needed
                    ),
                )
          ],
        ),
      ),
      SizedBox(height: 24),
      Padding(
        padding: EdgeInsets.only(left: 14),
        child: SizedBox(
          width: 353,
          height: 41,
       child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10.0),
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
                                'See More',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
       )
       )
      ),
               SizedBox(height: 48),
             Padding(
              padding: EdgeInsets.only(left: 17.0),
              child: Text(
                'Available movies and series',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Roboto',
                ),
                textAlign: TextAlign.left, // Align text to the left
              ),
            ), // Adjust spacing as needed
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemCount:
                    trendingMovies.length, // Exclude the first two movies
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.55,
                ),
                itemBuilder: (context, index) {
                  final movie = trendingMovies[index]; // Offset index by 2
                  return _buildTrendingMovieCard(
                    imagePath: movie['imagePath']!,
                    title: movie['title']!,
                    subtitle: movie['subtitle']!,
                    rating: movie['rating']!,
                  );
                },
              ),
            ),
             SizedBox(height: 8),
      Padding(
        padding: EdgeInsets.only(left: 14),
        child: SizedBox(
          width: 353,
          height: 41,
       child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF212020),
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(color: Color(0xFF747474)),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 4.0),
                              Text(
                                'View more options',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
       )
       )
                        ),
                          SizedBox(height: 50),
          ],
        ),
      ),
      backgroundColor: Color(0xFF212020),
    );
  }
}











Widget _buildTrendingMovieCard({
  required String imagePath,
  required String title,
  required String subtitle,
  required String rating,
}) {
  return Stack(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 168,
            width: 112,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
              fontFamily: 'Roboto',
            ),
          ),
          const SizedBox(height: 4.0), 
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0XFFA7A7A7),
              fontFamily: 'Roboto',
            ),
          ),
        ],
      ),
      Positioned(
        bottom: 55,
        right: 17,
        child: Text(
          rating,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFFFA4E5B),
            fontWeight: FontWeight.w400,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    ],
  );
}