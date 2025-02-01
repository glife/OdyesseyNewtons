import 'package:flutter/material.dart';
import 'package:sports_management_app/home_page.dart';

class SportsSelectionPage extends StatefulWidget {
  const SportsSelectionPage({super.key});

  @override
  _SportsSelectionPageState createState() => _SportsSelectionPageState();
}

class _SportsSelectionPageState extends State<SportsSelectionPage> {
  final List<String> sports = [
    'Football',
    'Basketball',
    'Tennis',
    'Cricket',
    //'Badminton',
    'Swimming',
    'Running',
    'Cycling',
    //'Table Tennis',
    'Hockey'
  ];

  final Set<String> selectedSports = {};

  final Map<String, IconData> sportIcons = {
    'Football': Icons.sports_football,
    'Basketball': Icons.sports_basketball,
    'Tennis': Icons.sports_tennis,
    'Cricket': Icons.sports_cricket,
    //'Badminton': Icons.sports_badminton,
    'Swimming': Icons.pool,
    'Running': Icons.run_circle,
    'Cycling': Icons.directions_bike,
    //'Table Tennis': Icons.sports_table_tennis,
    'Hockey': Icons.sports_hockey,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Your Sports',
          style: TextStyle(
            fontFamily: 'Clemente',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.green, // Updated to plain green background
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Choose the sports you are interested in:',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: sports.length,
                  itemBuilder: (context, index) {
                    final sport = sports[index];
                    final isSelected = selectedSports.contains(sport);
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ChoiceChip(
                        label: Row(
                          children: [
                            Icon(
                              sportIcons[sport],
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              sport,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        selected: isSelected,
                        selectedColor: Colors.green,
                        onSelected: (bool selected) {
                          setState(() {
                            if (selected) {
                              selectedSports.add(sport);
                            } else {
                              selectedSports.remove(sport);
                            }
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
