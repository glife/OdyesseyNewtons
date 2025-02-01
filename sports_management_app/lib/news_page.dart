import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  NewsPage({super.key});

  final List<Map<String, String>> sportsNews = [
    {'title': 'Star Player Transfers!', 'image': 'assets/images/top5.jpg'},
    {
      'title': 'Major League Finals Tonight!',
      'image': 'assets/images/top2.jpg'
    },
    {
      'title': 'Exclusive Training Tips from Pros!',
      'image': 'assets/images/top3.jpg'
    },
    {
      'title': 'Upcoming Matches You Can’t Miss',
      'image': 'assets/images/top4.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'SportSphere News',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Latest Sports News',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Lato'),
              ),
            ),
            Column(
              children: sportsNews.map((news) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10)),
                          child: Image.asset(
                            news['image']!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            news['title']!,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
