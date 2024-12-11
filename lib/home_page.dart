import 'package:flutter/material.dart';
import 'package:kali/login.dart';
import 'package:kali/reg-screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/v915-wit-011-f.jpg', // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),

          // Semi-transparent blue overlay
          Container(
            color: Colors.blue.withOpacity(0.6),
          ),

          // Centered Page Content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // App Name
                  const Text(
                    'WELCOME TO NEXTGEN',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Circular Logo with Visible Content
                  ClipOval(
                    child: Image.asset(
                      'assets/logo.png', // Replace with your logo asset
                      height: 120, // Adjust size for better visibility
                      width: 120, // Adjust size for better visibility
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Welcome Content
                  const Text(
                    'Transforming lives through accessible financial solutions with India Post.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Login Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade800, // Deep blue button
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterScreen()),
                      );
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                   const SizedBox(height: 20),
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade800, // Deep blue button
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
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
