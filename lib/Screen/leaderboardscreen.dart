import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({Key? key}) : super(key: key);

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/images/Vector (5).png',
            height: 24,
            width: 24,
          ),
          onPressed: () => Navigator.pop(context),
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
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF121212),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCongratulationsCard(),
            _buildLeaderboardPodium(),
            SizedBox(
              height: 600, // Adjust this height as needed
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6, // Number of leaderboard items
                itemBuilder: (context, index) {
                  return _buildLeaderboardItem(index + 5);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCongratulationsCard() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: 88,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFF212020),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
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
              ),
            ),
            const SizedBox(width: 16),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
    );
  }

  Widget _buildLeaderboardPodium() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildPodiumItem('Alena Donin', 'assets/images/Mask Group.png',
              '1,469 QP', const Color(0xFFFA4E5B), 2),
          _buildPodiumItem('Davis Curtis', 'assets/images/Mask Group (1).png',
              '2,569 QP', const Color(0xFFFEBF40), 1),
          _buildPodiumItem('Craig Gouse', 'assets/images/Avatar (1).png',
              '1,053 QP', const Color(0xFFFF8C4B), 3),
        ],
      ),
    );
  }

  Widget _buildPodiumItem(
      String name, String imagePath, String points, Color color, int place) {
    double height = place == 1 ? 120 : 100;
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Image.asset(imagePath, height: 56, width: 56),
      const SizedBox(height: 8),
      Text(
        name,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      const SizedBox(height: 8),
      Container(
        width: 70,
        // height: height,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Center(
          child: Text(
            points,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
      const SizedBox(height: 8),
      Column(
        children: [
          Image.asset(
            'assets/images/Rank.png', // Replace with your image asset path
            width: 57,
            height: 25,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/Rank (1).png', // Replace with your image asset path
            width: 70,
            height: 40,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/Rank (2).png', // Replace with your image asset path
            width: 70,
            height: 40,
            fit: BoxFit.cover,
          ),
        ],
      ),
    ]);
  }

  Widget _buildLeaderboardItem(int rank) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 104,
      decoration: BoxDecoration(
        color: const Color(0xFF333333),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          _buildRankCircle(rank),
          const SizedBox(width: 16),
          _buildAvatarImage(),
          const SizedBox(width: 16),
          _buildUserInfo(),
        ],
      ),
    );
  }

  Widget _buildRankCircle(int rank) {
    return Container(
      width: 30,
      height: 35,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          '$rank',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik',
          ),
        ),
      ),
    );
  }

  Widget _buildAvatarImage() {
    return Image.asset(
      'assets/images/Avatar (2).png',
      width: 56.0,
      height: 63.3,
    );
  }

  Widget _buildUserInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Madelyn Dias',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFFFEFEFE),
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          '590 points',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFFDADADA),
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 4),
        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [Color(0xFF9A1398), Color(0xFFFA3A60), Color(0xFFFEBF40)],
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
    );
  }
}
