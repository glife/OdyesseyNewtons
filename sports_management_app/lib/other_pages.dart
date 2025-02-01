import 'package:flutter/material.dart';

class TrainingVideosPage extends StatelessWidget {
  TrainingVideosPage({super.key});

  final List<Map<String, String>> trainingVideos = [
    {'title': 'Pro Dribbling Techniques', 'image': 'assets/images/video1.png'},
    {'title': 'Mastering Free Kicks', 'image': 'assets/images/video2.jpg'},
    {'title': 'Endurance Training Tips', 'image': 'assets/images/video3.jpeg'},
    {
      'title': 'Strength Training for Athletes',
      'image': 'assets/images/video4.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Training Videos'), backgroundColor: Colors.green),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: trainingVideos.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(trainingVideos[index]['image']!,
                    fit: BoxFit.cover, width: double.infinity, height: 200),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(trainingVideos[index]['title']!,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class EventBookingPage extends StatelessWidget {
  EventBookingPage({super.key});

  final List<Map<String, String>> events = [
    {'title': 'Football Championship', 'image': 'assets/images/event1.jpg'},
    {'title': 'Basketball Tournament', 'image': 'assets/images/event2.jpg'},
    {'title': 'Marathon 2025', 'image': 'assets/images/event3.jpg'},
    {'title': 'Cricket World Cup', 'image': 'assets/images/event4.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Event Booking'), backgroundColor: Colors.green),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(events[index]['image']!,
                    fit: BoxFit.cover, width: double.infinity, height: 200),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(events[index]['title']!,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SportsStorePage extends StatelessWidget {
  SportsStorePage({super.key});

  final List<Map<String, String>> sportsProducts = [
    {'title': 'Football Boots', 'image': 'assets/images/product1.jpg'},
    {'title': 'Basketball Jersey', 'image': 'assets/images/product2.jpg'},
    {'title': 'Tennis Racket', 'image': 'assets/images/product3.jpg'},
    {'title': 'Running Shoes', 'image': 'assets/images/product4.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Sports Store'), backgroundColor: Colors.green),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: sportsProducts.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(sportsProducts[index]['image']!,
                    fit: BoxFit.cover, width: double.infinity, height: 200),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(sportsProducts[index]['title']!,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
