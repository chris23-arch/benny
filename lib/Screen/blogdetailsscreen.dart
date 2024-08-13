import 'package:benny/Screen/blogsnewsscreen.dart';
import 'package:benny/common/style_text..dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BlogDetailsScreen extends StatefulWidget {
  const BlogDetailsScreen({super.key});

  @override
  State<BlogDetailsScreen> createState() => _BlogDetailsScreenState();
}

class _BlogDetailsScreenState extends State<BlogDetailsScreen> {
  List<StyledText> styledTextList = [
    StyledText(
      "Lorem  ipsum  dolor  sit  amet\nconsectetur. Pulvinar egestas nulla\n id  massa  habitasse  dignissim\nelementum. Diam parturient lacus\norci mauris at nunc. Diam purus est\nodio aenean pulvinar. Habitant vitae\npurus  a.  Molestie  euismod  in\nsemper id aliquam vel pellentesque.\nDictum quis in ultrices at sed odio\nmalesuade fames libero. Eget nulla\nmaecenas senectus condimentum.\n",
      const TextStyle(
        color: Color(0XFFF1F1F1),
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
    ),
    StyledText(
      "Vitae pretium eu neque orci. Duis ac\n",
      const TextStyle(
        color: Colors.blue, // Desired color
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400, // Desired weight
      ),
    ),
    StyledText(
        "urna consectetur eu est. amet nisi\nbibendum elementum a purus eu.\nFeugiat bibendum morbi quam vitae\nscelerisque. Morbi if mass amet\nmorbi nunc cras pulvinar. Penatibus\nmauris gravida neque ut.",
        const TextStyle(
          color: Color(0xFFF1F1F1), // Desired color
          fontSize: 20,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400, // Desired weight
        )),
  ];
  List<StyledText> styledTextList1 = [
    StyledText(
      "Sollicitudin  urna  ut  aenean  enim\npretium  eget  imperdiet  diam.\n",
      const TextStyle(
        color: Color(0XFFF1F1F1),
        fontSize: 19,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
      ),
    ),
    StyledText(
      "Pretium  soclis  vel  non placerat\n",
      const TextStyle(
        color: Colors.blue, // Desired color
        fontSize: 19,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500, // Desired weight
      ),
    ),
    StyledText(
      "accumsan  rhoncus.   Imperdiet\nadipiscing eu eget magna sed diam.\nEst  velit  solicitudin  in  curabitur\ncondimentum    velit    Neque\nullamcorper pharetra sit vitae. Lacus\nnisl  sed  nunc  aliquam  varius  felis.\nNunc  blandit  fringilla  neque  platea\nleo turpis tempor nulla aliquam.",
      const TextStyle(
        color: Color(0xFFF1F1F1), // Desired color
        fontSize: 19,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500, // Desired weight
      ),
    ),
  ];

  List<StyledText> styledTextList2 = [
    StyledText(
      "Convallis  ullamcorper  elit  aliquam\nplatea  interdum  tellus  sem.  Non\nquam at ullamcorper vehicula purus\ntortor  gravida  tempor  tincidunt.\n",
      const TextStyle(
        color: Color(0XFFFFFFFF),
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
      ),
    ),
    StyledText(
      "Integer  enim  euismod  egestas\n",
      const TextStyle(
        color: Colors.blue, // Desired color
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500, // Desired weight
      ),
    ),
    StyledText(
      "pretium.  Nam  orci  massa  in  risus\nsem  ac  vestibulum.  Sed  aliquet\nvolutpat adipiscing dignissim tellus\npellentesque facilisi. maecenas orci\nhabitant consequat at.  Ut ipsum in\nnon  tincidnut  lobortis  id.  Mattis\nmattis  mi  cras  fusce  congue  et.\nMassa enim suspendisse sit turpis\nlobortis.",
      const TextStyle(
        color: Color(0xFFFFFFFF), // Desired color
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500, // Desired weight
      ),
    ),
  ];

  List<StyledText> styledTextList3 = [
    StyledText(
      "Convallis  ullamcorper  elit  aliquam\nplatea  interdum  tellus  sem.  Non\nquam at ullamcorper vehicula purus\ntortor  gravida  tempor  tincidunt.\n",
      const TextStyle(
        color: Color(0XFFFFFFFF),
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
      ),
    ),
    StyledText(
      "Integer  enim  euismod  egestas\n",
      const TextStyle(
        color: Colors.blue, // Desired color
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500, // Desired weight
      ),
    ),
    StyledText(
      "pretium.  Nam  orci  massa  in  risus\nsem  ac  vestibulum.  Sed  aliquet\nvolutpat adipiscing dignissim tellus\npellentesque facilisi. maecenas orci\nhabitant consequat at.  Ut ipsum in\nnon  tincidnut  lobortis  id.  Mattis\nmattis  mi  cras  fusce  congue  et.\nMassa enim suspendisse sit turpis\nlobortis.",
      const TextStyle(
        color: Color(0xFFFFFFFF), // Desired color
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500, // Desired weight
      ),
    ),
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
                title: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [
                        Color(0xFF9A1398), // Gradient start color
                        Color(0xFFFA3A60), // Gradient middle color
                        Color(0xFFFEBF40), // Gradient end color
                      ],
                    ).createShader(bounds);
                  },
                  child: const Text(
                    "Blog and News",
                    style: TextStyle(
                      color: Colors
                          .white, // This will be overridden by the gradient
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
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
          const SizedBox(height: 22),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              'assets/images/Group 526.png', // Replace with your image asset path
              height: 203, // Adjust the height of the image here
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
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
            const Padding(
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
            const Padding(
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
            const Padding(
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
            const Padding(
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
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Colors.white, // Default text color
                  ),
                  children: [
                    TextSpan(
                      text:
                          'Lorem   ipsum   dolor   sit   amet consecteur. Pulvinar  egestas  nulla id   massa   habitasse   dignissim elementum.  Diam   parturient  lacus orci mauris at nunc.  Diam  purus  est odio aenean  pulvinar. Habitant  vitae purus  arcu  in  fringilla  adipiscing augue  a.   Molestie  euismod  in semper id aliquam vel pellentesque. Dictum  quis in ultrices at sed odio malesuade fames libero. Eget nulla maecenas  senectus  condimentum.  ',
                    ),
                    TextSpan(
                      text: 'Vitae pretium eu reque orci.  Duis ac    ',
                      style: TextStyle(
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: [
                              Color(0xFF9A1398),
                              Color(0xFFFA3A60),
                              Color(0xFFFEBF40)
                            ], // Gradient colors
                            tileMode: TileMode.mirror, // How the gradient tiles
                          ).createShader(Rect.fromLTWH(900, 0, 500, 200)),
                      ),
                    ),
                    TextSpan(
                      text:
                          'urna consectetur eu est.  Amet nisi bibendum  elementum  a  purus  eu. Feugiat bibendum morbi quam vitae scelerisque.  Morbi  id  massa  amet morbi nunc cras pulvinar. penatibus mauris gravida neque ut',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 56),
            // Container with Image and Texts
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                'assets/images/bridgetron-netflix-cast-001-1564422754 1.png', // Replace with your image asset path
                height: 203, // Adjust the height of the image here
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 56),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      color: Colors.white, // Default text color
                    ),
                    children: [
                      TextSpan(
                        text:
                            'Sollicitudin urna ut aenean enim pretium eget imperdiet diam   ',
                      ),
                      TextSpan(
                        text: ' Pretium sociis vel non placerat    ',
                        style: TextStyle(
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: [
                                Color(0xFF9A1398),
                                Color(0xFFFA3A60),
                                Color(0xFFFEBF40)
                              ], // Gradient colors
                              tileMode:
                                  TileMode.mirror, // How the gradient tiles
                            ).createShader(Rect.fromLTWH(900, 0, 500, 200)),
                        ),
                      ),
                      TextSpan(
                        text:
                            ' accusam   rhoncus.    Imperdiet adipscing eu eget magna sed diam. Est  velit  solicitudin  in  curabitur condimentum     veli.    Neque ullamcorper pharetra sit vitae.  Lacus nisi  sed  nunc aliquam varius felis. Nunc  blandit  fringilla  neque  platea leo turpis tempor nulla aliquam.',
                      ),
                    ],
                  ),
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
                                        offset:
                                            Offset(2.0, 2.0), // Shadow offset
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
                                      color:
                                          const Color(0xFFFFFFFF), // Red color
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
                                            offset: Offset(0,
                                                4), // Move the image down by 4 pixels
                                            child: Image.asset(
                                              'assets/images/Group 533.png', // Replace with your image path
                                              width:
                                                  30, // Adjust width as needed
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
              SizedBox(height: 56),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      color: Colors.white, // Default text color
                    ),
                    children: [
                      TextSpan(
                        text:
                            'Convallis ullamcorper elit aliquam platea interdum tellus sem. Non quam at ullamcorper vehicula purus tortor gravida tempor tincidunt.    ',
                      ),
                      TextSpan(
                        text: ' Integer  enim  euismod  egestas    ',
                        style: TextStyle(
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: [
                                Color(0xFF9A1398),
                                Color(0xFFFA3A60),
                                Color(0xFFFEBF40)
                              ], // Gradient colors
                              tileMode:
                                  TileMode.mirror, // How the gradient tiles
                            ).createShader(Rect.fromLTWH(900, 0, 500, 200)),
                        ),
                      ),
                      TextSpan(
                        text:
                            '  pretium. Nam orci massa in risus sem ac vestibulum. Sed aliquet volutpat adipiscing dignissim tellus pellentesque facilisi. Maecenas orci habitant consequat at. Ut ipsum in non tincidunt lobortis id. Mattis mattis mi cras fusce congue et. Massa enim suspendisse sit turpis lobortis.',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Image.asset(
                  'assets/images/Group 526 (3).png', // Replace with your image asset path
                  height: 203, // Adjust the height of the image here
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 56),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        color: Colors.white, // Default text color
                      ),
                      children: [
                        TextSpan(
                          text:
                              'Convallis ullamcorper elit aliquam platea interdum tellus sem. Non quam at ullamcorper vehicula purus tortor gravida tempor tincidunt.    ',
                        ),
                        TextSpan(
                          text: ' Integer  enim  euismod  egestas    ',
                          style: TextStyle(
                            foreground: Paint()
                              ..shader = LinearGradient(
                                colors: [
                                  Color(0xFF9A1398),
                                  Color(0xFFFA3A60),
                                  Color(0xFFFEBF40)
                                ], // Gradient colors
                                tileMode:
                                    TileMode.mirror, // How the gradient tiles
                              ).createShader(Rect.fromLTWH(900, 0, 500, 200)),
                          ),
                        ),
                        TextSpan(
                          text:
                              '  pretium. Nam orci massa in risus sem ac vestibulum. Sed aliquet volutpat adipiscing dignissim tellus pellentesque facilisi. Maecenas orci habitant consequat at. Ut ipsum in non tincidunt lobortis id. Mattis mattis mi cras fusce congue et. Massa enim suspendisse sit turpis lobortis.',
                        ),
                      ],
                    ),
                  ),
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
                        width: 10), // Space between the line and gradient text
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
                        width: 10), // Space between the gradient text and line
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
                    ),
                    const SizedBox(
                        width: 0), // Space between the container and image
                    Align(
                        alignment: Alignment.centerRight,
                        child: Transform.translate(
                          offset: const Offset(-25,
                              0), // Adjust this value to move the image to the left
                          child: Image.asset(
                            'assets/images/arrow-down.png', // Replace with your image asset path
                            width: 25, // Adjust width as needed
                            height: 25, // Adjust height as needed
                          ),
                        ))
                  ]),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 0),
                  child: Row(children: [
                    Expanded(
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
                    ),
                    const SizedBox(
                        width: 0), // Space between the container and image
                    Align(
                        alignment: Alignment.centerRight,
                        child: Transform.translate(
                          offset: const Offset(-25,
                              0), // Adjust this value to move the image to the left
                          child: Image.asset(
                            'assets/images/arrow-down.png', // Replace with your image asset path
                            width: 25, // Adjust width as needed
                            height: 25, // Adjust height as needed
                          ),
                        )),
                  ]),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 0),
                  child: Row(children: [
                    Expanded(
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
                    ),
                    const SizedBox(
                        width: 0), // Space between the container and image
                    Align(
                        alignment: Alignment.centerRight,
                        child: Transform.translate(
                          offset: const Offset(-25,
                              0), // Adjust this value to move the image to the left
                          child: Image.asset(
                            'assets/images/arrow-down.png', // Replace with your image asset path
                            width: 25, // Adjust width as needed
                            height: 25, // Adjust height as needed
                          ),
                        ))
                  ]),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 0),
                  child: Row(children: [
                    Expanded(
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
                    ),
                    const SizedBox(
                        width: 0), // Space between the container and image
                    Align(
                        alignment: Alignment.centerRight,
                        child: Transform.translate(
                          offset: const Offset(-25,
                              0), // Adjust this value to move the image to the left
                          child: Image.asset(
                            'assets/images/arrow-down.png', // Replace with your image asset path
                            width: 25, // Adjust width as needed
                            height: 25, // Adjust height as needed
                          ),
                        )),
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
                        width: 10), // Space between the line and gradient text
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
                        width: 10), // Space between the gradient text and line
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
              ])
            ]),
          ]),
        ]),
      ),
      backgroundColor: const Color(0xFF121212),
    );
  }
}
