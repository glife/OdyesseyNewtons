import 'package:flutter/material.dart';
import 'package:sports_management_app/login_page.dart';
import 'package:sports_management_app/signup_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image section
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/welcome_cat.jpg', // Replace with your image
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
          ),
          // Gradient background overlapping image
          Positioned(
            top: MediaQuery.of(context).size.height * 0.52, // Adjust overlap
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.50,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF34713B), Color(0xFF5FEF6F)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to SportSphere!',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Clemente',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Connect with athletes, book events, and explore sports accessories all in one place!',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Color.fromARGB(252, 247, 241, 241),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginPage();
                              },
                            ),
                          );
                        }, // Add navigation
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 20),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return SignupPage();
                              },
                            ),
                          );
                        }, // Add navigation
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Signup',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
