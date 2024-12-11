import 'package:flutter/material.dart';
import 'package:kali/dashboard_page.dart';
import 'package:kali/reg-screen.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Login",
          style: TextStyle(
            color: Colors.grey.shade900,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: size.height * 0.05,
          ).copyWith(bottom: size.height * 0.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hello, \nWelcome Back",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: size.width * 0.1,
                    ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/google.png', width: 30),
                      SizedBox(width: 40),
                      Image.asset('assets/facebook.png', width: 30),
                    ],
                  ),
                  SizedBox(height: 50),
                  _buildTextField(
                    context,
                    hintText: "Email or Phone number",
                  ),
                  SizedBox(height: 20),
                  _buildTextField(
                    context,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Forgot Password?",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardScreen(role: "Admin",),
                        ),
                      );
                    },
                    elevation: 0,
                    padding: EdgeInsets.all(18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  MaterialButton(
                    onPressed: () {
                      // Navigate to the Register screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    elevation: 0,
                    padding: EdgeInsets.all(18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(BuildContext context,
      {required String hintText, bool obscureText = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue), // Makes the border visible
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}


