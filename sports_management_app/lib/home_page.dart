import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
import 'news_page.dart'; // Import the NewsPage file

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late VideoPlayerController _controller;
  // late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.asset('assets/videos/smallvideo.mp4')
    //   ..initialize().then((_) {
    //     setState(
    //         () {}); // Ensure the first frame is shown after the video is initialized
    //   });
  }

  @override
  void dispose() {
    super.dispose();
    //_controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SportSphere',
          style: TextStyle(
            fontFamily: 'Clemente',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification click
            },
          ),
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {
              // Handle community messages click
            },
          ),
        ],
        backgroundColor: const Color(0xFF4CAF50), // Bluish Green theme
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Hey Ishaan, Ready to Level Up?',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
// Featured Images (Scrollable)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _featuredImage('assets/images/top1.png'),
                    //_featuredImage('assets/images/top2.jpg'),
                    _featuredImage('assets/images/top3.jpg'),
                    _featuredImage('assets/images/top4.jpg'),
                    _featuredImage('assets/images/top5.jpg'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Quick Access Buttons (same as before)
              SingleChildScrollView(
                // Wrap with SingleChildScrollView
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _quickAccessButton(Icons.event, 'Upcoming Events'),
                    SizedBox(width: 7),
                    _quickAccessButton(Icons.book, 'Trending Tutorials'),
                    SizedBox(width: 7),
                    _quickAccessButton(
                        Icons.shopping_cart, 'Best Sports Deals'),
                    SizedBox(width: 7),
                    _quickAccessButton(Icons.article, 'Latest News'),
                    SizedBox(width: 7),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Mid Section - User Progress & Engagement (same as before)

              // Main Categories (same as before)
              const Text(
                'Explore Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              //Image.asset('assets/images/testing.png'),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Adjust to 2 columns for 4 items
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 4, // Only 4 images
                itemBuilder: (context, index) {
                  // Replace this with the actual image paths for your assets
                  String imagePath;
                  switch (index) {
                    case 0:
                      imagePath =
                          'assets/images/1.png'; // Replace with your image path
                      break;
                    case 1:
                      imagePath =
                          'assets/images/2.png'; // Replace with your image path
                      break;
                    case 2:
                      imagePath =
                          'assets/images/3.png'; // Replace with your image path
                      break;
                    case 3:
                      imagePath =
                          'assets/images/4.png'; // Replace with your image path
                      break;
                    default:
                      imagePath = ''; // Default case if any
                  }

                  return Card(
                    elevation: 4,
                    color: Colors.blueAccent.withOpacity(0.1),
                    child: InkWell(
                      onTap: () {
                        if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NewsPage()),
                          );
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const Text(
                'Your Progress & Engagement',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent.withOpacity(0.1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _progressRow('Performance Stats', '75%'),
                    _progressRow('Last Match Played', 'Football vs Team B'),
                    _progressRow('Streaks', '5 Matches'),
                    _progressRow('Challenges', 'Complete 3 Goals'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Set to the current page
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Tutorials',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          // Handle bottom nav tap
        },
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
      ),
    );
  }

  // Quick Access Button Widget
  Widget _quickAccessButton(IconData icon, String label) {
    return ElevatedButton.icon(
      onPressed: () {
        // Handle button click
      },
      icon: Icon(icon, size: 30),
      label: Text(
        label,
        style: TextStyle(
            fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
    );
  }

  Widget _featuredImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imagePath,
          height: 200, // Adjust height as needed
          width: 360, // Adjust width as needed
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Progress Row Widget
  Widget _progressRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
