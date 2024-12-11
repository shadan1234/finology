import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse(
    'https://app.powerbi.com/view?r=eyJrIjoiYTk4ZTVhODUtZjVhNS00MDk1LWJiOWMtYzRmMGVmM2UyZjVkIiwidCI6ImJhZDEyODY0LTkxM2UtNGI5OS04N2Q2LWI4ZDJhZDQ1OWUyNyIsImMiOjEwfQ%3D%3D',
);

class DemographicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white, // Background color set to white
      body: Center(
        child: ElevatedButton(
          onPressed: _launchUrl,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Blue color for the button
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Smaller size
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0), // Rounded corners
            ),
            elevation: 5, // Button elevation for depth
          ),
          child: Text(
            'Show Demographics Screen',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white, // White text color
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
