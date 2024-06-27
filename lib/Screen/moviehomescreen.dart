import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieHomescreen extends StatefulWidget {
  const MovieHomescreen({super.key});

  @override
  State<MovieHomescreen> createState() => _MovieHomescreenState();
}

class _MovieHomescreenState extends State<MovieHomescreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _formKey = GlobalKey<FormState>(); // Key for the form
  final _searchController = TextEditingController();

  final PageController _pageController = PageController(viewportFraction: 0.8);

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
  ];
  final List<Map<String, String>> romanceMovies = [
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
  ];
  final List<Map<String, String>> romanceSeries = [
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
  ];
  final List<Map<String, String>> adultFictionSeries = [
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
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0XFF121212), Color(0XFF5A5A5A)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: AppBar(
                elevation: 0.0,
                bottom: PreferredSize(
                  preferredSize:
                      const Size.fromHeight(80), // adjust heigth as needed
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 17.0, top: 11.0, bottom: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 51, // Adjust height
                                width: 330, // Adjust width
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Avatar',
                                      hintStyle: const TextStyle(
                                          color: Color(
                                              0XFFA7A7A7)), // Change hint text color to white
                                      prefixIcon: const Icon(Icons.search,
                                          color: Color(
                                              0XFFA7A7A7)), // change the icon color to white
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      filled: true,
                                      fillColor:
                                          const Color(0xFF212020) //[400],
                                      ),
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                                width:
                                    17.0), // Adjust the space between search bar and image
                            GestureDetector(
                              onTap: () {
                                // Handle the tap on the image/icon
                                print('Image/icon tapped');
                              },
                              child: Container(
                                width:
                                    18.0, // Adjust width of the image container
                                height:
                                    20.0, // Adjust height of the image container
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/Vector (3).png'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TabBar(
                        controller: _tabController,
                        indicator: const BoxDecoration(),
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        labelPadding: EdgeInsets.zero,
                        // labelColor: const Color(
                        //     0xFFFA4E5B), // Custom color for selected tab label
                        unselectedLabelColor: const Color(0xFFA7A7A7),
                        isScrollable: false,
                        dividerColor: Color(0XFF212020),
                        tabs: [
                          _buildTab('Top rated', 0),
                          _buildTab('Latest', 1),
                          _buildTab('Classics', 2),
                          _buildTab('Musical', 3),
                          _buildTab('Education', 4),
                        ],
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.transparent,
              ))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the movie card image alone
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            Container(
              height: 300.0, // set a fixed height for the pageview
              child: _buildMovieCard(),
              // ),
            ),

             SizedBox(height: 0),
             Padding(
              padding: EdgeInsets.only(left: 17.0, top: 0.0),
              child: Text(
                'Trending',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
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
                      rating: movie['rating']!);
                },
              ),
            ),
            // Trending header for the next set of movies
            SizedBox(height: 0),
            Padding(
              padding:  EdgeInsets.only(left: 17.0, top: 8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text.rich(
                      TextSpan(
                          text: 'Movies', // Change the header text as needed
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300),
                          children: <TextSpan>[
                            TextSpan(
                              text: '/',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: 'Romance',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                            )
                          ]),
                      // textAlign: TextAlign.left,
                    ),
                    InkWell(
                        onTap: () {
                          // Handle "See All" tap
                          // You can navigate to another screen or perform any action here
                          print('See All tapped');
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Text(
                            'See all',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(
                                  0xFFBBBBBB), // Change the color to your preference
                              fontFamily: 'Roboto',
                              decoration: TextDecoration
                                  .underline, // underline the links
                              decorationColor: Colors.white,
                            ),
                          ),
                        )),
                  ]),
            ),
            // new container with image, icon, and text

            // Trending movies grid view for the next set of movies
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemCount: romanceMovies.length, // Exclude the first two movies
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.55,
                ),
                itemBuilder: (context, index) {
                  final movie = romanceMovies[index]; // Offset index by 2
                  return _buildTrendingMovieCard(
                    imagePath: movie['imagePath']!,
                    title: movie['title']!,
                    subtitle: movie['subtitle']!,
                    rating: movie['rating']!,
                  );
                },
              ),
            ),
            const SizedBox(height: 0.0),
            _buildSpecialContainer(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
            ),
            // third oneyh
            Padding(
              padding: const EdgeInsets.only(left: 17.0, top: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(
                    TextSpan(
                        text: 'Series', // Change the header text as needed
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300),
                        children: <TextSpan>[
                          TextSpan(
                            text: '/',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700),
                          ),
                          TextSpan(
                            text: 'Romance',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                    // textAlign: TextAlign.left,
                  ),
                  InkWell(
                    onTap: () {
                      // Handle "See All" tap
                      // You can navigate to another screen or perform any action here
                      print('See All tapped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(
                              0xFFBBBBBB), // Change the color to your preference
                          fontFamily: 'Roboto',
                          decoration:
                              TextDecoration.underline, // underline the links
                          decorationColor: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Trending movies grid view for the next set of movies
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemCount:
                    romanceSeries.length, // Exclude the first two movies
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.55,
                ),
                itemBuilder: (context, index) {
                  final movie = romanceSeries[index]; // Offset index by 2
                  return _buildTrendingMovieCard(
                    imagePath: movie['imagePath']!,
                    title: movie['title']!,
                    subtitle: movie['subtitle']!,
                    rating: movie['rating']!,
                  );
                },
              ),
            ),

            // fourthoneyh
            SizedBox(height: 0.0),
            const Padding(
                padding: EdgeInsets.only(left: 17.0, top: 2.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(TextSpan(
                              text:
                                  'Series', // Change the header text as needed
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300),
                              children: <TextSpan>[
                            TextSpan(
                              text: '/',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: 'Adult Fiction',
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                            )
                          ])
                          // textAlign: TextAlign.left,
                          ),
                    ])),

            // Trending movies grid view for the next set of movies
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemCount:
                    adultFictionSeries.length, // Exclude the first two movies
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.55,
                ),
                itemBuilder: (context, index) {
                  final movie = adultFictionSeries[index]; // Offset index by 2
                  return _buildTrendingMovieCard(
                    imagePath: movie['imagePath']!,
                    title: movie['title']!,
                    subtitle: movie['subtitle']!,
                    rating: movie['rating']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF212020),
    );
  }

  Widget _buildTab(String label, int tabIndex) {
    return Tab(
        child: Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
                    colors: _tabController.index == tabIndex
                        ? [
                            Color(0xFF9A1398),
                            Color(0xFFFA3A60),
                            Color(0xFFFEBF40)
                          ]
                        : [Colors.white, Colors.white, ])
                .createShader(bounds);
          },
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ),
    ));
  }

  Widget _buildMovieCard() {
    return CarouselSlider(
      options: CarouselOptions(
          height: 400,
          enableInfiniteScroll: false,
          viewportFraction: 0.9,
          initialPage: 0,
          padEnds: false),
      items: [
        _buildMovieDetails(
          'assets/images/LordOfTheRings-FellowshipOfTheRing-HollywoodMoviePoster_2770e0df-8b6b-4580-948d-7256db04e257 1.png',
          'The Lord Of The Rings',
          'Hollywood/Fantasy',
          '7.5',
          'R16',
        ),
        _buildMovieDetails(
          'assets/images/avatar-the-last-airbender-pictures-n64tz1hvcd7gjqh1 1.png',
          'Avatar: The Last Airbender',
          'Hollywood/Fantasy',
          '7.5',
          'R16',
        ),
        _buildMovieDetails(
          'assets/images/unnamed 1.png',
          'Bridgerton: Season 3',
          'Hollywood',
          '7.5',
          'R16',
        ),
        // Add two more movie cards with different images and properties here
        // Example:
        // _buildMovieDetails('path_to_image', 'Title', 'Subtitle', 'Rating', 'Age Rating'),
        // _buildMovieDetails('path_to_image', 'Title', 'Subtitle', 'Rating', 'Age Rating'),
      ].map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: item,
            );
          },
        );
      }).toList(),
    );
  }

  Color getContainerColor(String title) {
    switch (title) {
      case 'The Lord Of The Rings':
        return Color(0xFF563926); // Brown color
      case 'Avatar: The Last Airbender':
        return Color(0xFFC48F83); // Blue color
      case 'Bridgerton: Season 3':
        return Color(0xFF86B7A6); // Different color
      // Add more cases for other titles if needed
      default:
        return Color(0xFF563926); // Default color (brown)
    }
  }

  Widget _buildMovieDetails(
    String imagePath,
    String? title,
    String? subtitle,
    String? rating,
    String? ageRating,
  ) {
    return Padding(
        padding:
            const EdgeInsets.only(left: 6, top: 8.0, bottom: 8.0, right: 0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FractionallySizedBox(
                  widthFactor: 1,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                if (title != null) ...[
                  const SizedBox(height: 10.0),
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
                if (subtitle != null || ageRating != null) ...[
                  const SizedBox(height: 2.0),
                  Row(
                    children: [
                      if (subtitle != null)
                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            color: Color(0xFFA7A7A7),
                            fontFamily: 'Roboto',
                          ),
                        ),
                      if (subtitle != null && ageRating != null)
                        const SizedBox(width: 8.0),
                      if (ageRating != null)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3.0, vertical: 1.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Text(
                            ageRating,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xFF1A1A1A),
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ],
            ),
            if (rating != null)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                decoration: BoxDecoration(
                  color: getContainerColor(title ?? '').withOpacity(1.0),
                  borderRadius: BorderRadius.circular(3.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFFFFCA28),
                      size: 15.0,
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Colors.white,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
            Positioned(
              bottom: 41,
              right: 6,
              child: GestureDetector(
                onTap: () {
                  // Handle trailer tap
                  // For example, you can navigate to a trailer screen or play the trailer here
                  print('Trailer tapped for $title');
                },
                child: Container(
                  // height: 27.0, // Set fixed height
                  // width: 68.0, // Set fixed width
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 11.0),
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
                    borderRadius: BorderRadius.circular(4.0),
                    // color: Colors.black.withOpacity(0.7),
                    // borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16.0,
                        height: 16.0,
                        child: Image.asset(
                          'assets/images/icons8_cinema 1.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trailer',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
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
              color: Color(0XFFA7A7A7),
              fontFamily: 'Roboto',
            ),
          ),
        ],
      ),
      Positioned(
        bottom: 57,
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

Widget _buildSpecialContainer() {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10.0),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color:  Colors.transparent, // background color
            borderRadius: BorderRadiusDirectional.circular(4.0),
          ),
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
              child: Column(
                children: [
                Container(
                  width: 350,
                  height: 185,
                  child: Image.asset(
                    'assets/images/bridgetron-netflix-cast-001-1564422754 1.png', // Replace with your image asset
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 8.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icons8_win 1.png',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              'Take quiz and WIN',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10.0),
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
                            children: [
                              SizedBox(width: 4.0),
                              Text(
                                'Take Quiz',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Transform.translate(
                        offset: const Offset(0, -13),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What do you know about the Bridgerton cast?',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        )),
                  ]),
                ),
              ]))));
}
