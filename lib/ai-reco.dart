import 'package:flutter/material.dart';

class AIRecommendationScreen extends StatefulWidget {
  @override
  _AIRecommendationScreenState createState() => _AIRecommendationScreenState();
}

class _AIRecommendationScreenState extends State<AIRecommendationScreen> {
  final TextEditingController _controller = TextEditingController();
  String _recommendation = '';  // To store the response

  // Function to simulate fetching recommendations
  void _getRecommendations() {
    setState(() {
      _recommendation = '''Here is your personalized scheme based on your input: ${_controller.text}\n\n
Population:
  Age <19: Total: 751617 (Male: 383411, Female: 368206)
  Age 20-59: Total: 2083363 (Male: 1035671, Female: 1047692)
  Age 60+: Total: 391332 (Male: 191928, Female: 199404)

Schemes:
  Age <19:
    - Post Office Savings Account (SB)
  Age 20-59:
    - Recurring Deposit (RD)
    - Public Provident Fund (PPF)
    - Pradhan Mantri Jan Dhan Yojana (PMJDY)
    - Pradhan Mantri Suraksha Bima Yojana (PMSBY)
  Age 60+:
    - Senior Citizen Savings Scheme (SCSS)
  ''';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color set to white
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Center content vertically
              crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
              children: [
                // Title Text
                Text(
                  'Get personalized scheme based on your input',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,  // Lightish black text color
                  ),
                  textAlign: TextAlign.center, // Center align the text
                ),
                SizedBox(height: 20),
                
                // Input text field
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Enter your input',
                    labelStyle: TextStyle(color: Colors.black54), // Lightish black label text
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                    ),
                  ),
                  style: TextStyle(color: Colors.black), // Black text inside the input field
                  maxLines: 1, // Adjust the textfield size for single line input
                  textInputAction: TextInputAction.done, // Hide the keyboard when done
                ),
                SizedBox(height: 20),
                
                // Button to fetch recommendations
                ElevatedButton(
                  onPressed: _getRecommendations,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Blue color for the button
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Smaller size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Rounded corners
                    ),
                    elevation: 5, // Button elevation for depth
                  ),
                  child: Text(
                    'Get Recommendations',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // White text color
                    ),
                  ),
                ),
                
                SizedBox(height: 20),
                
                // Output text displayed after button press inside a box
                if (_recommendation.isNotEmpty)
                  Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[50], // Light blue background for the output box
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.blueAccent, width: 2.0),
                    ),
                    child: Text(
                      _recommendation,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent, // Blue text color for output
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left, // Left align the output text
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
