import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final String role; // Either "User" or "Admin"

  DashboardScreen({required this.role});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Welcome $role'),
          backgroundColor: Colors.blue.shade800, // Blue color for app bar
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.blue.shade800, // Consistent blue color for icon
                ),
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[600],
            tabs: [
              Tab(text: 'Demographics'),
              Tab(text: 'Recommender'),
              Tab(text: 'Events'),
            ],
          ),
        ),
        body: Stack(
          children: [
            // Semi-transparent blue overlay
            Container(
              color: Colors.blue.withOpacity(0.6),
            ),
            // Content
            TabBarView(
              children: [
                _buildDemographicsSection(),
                _buildRecommenderSection(),
                _buildEventsSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDemographicsSection() {
    return Container(
      color: Colors.blue.withOpacity(0.3), // Slightly lighter blue background
      child: Center(
        child: Text(
          'View Demographics Content',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white, // White text for visibility
          ),
        ),
      ),
    );
  }

  Widget _buildRecommenderSection() {
    return Container(
      color: Colors.blue.withOpacity(0.3), // Consistent background color
      child: Center(
        child: Text(
          'Scheme Recommender Content',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white, // White text for consistency
          ),
        ),
      ),
    );
  }

  Widget _buildEventsSection() {
    return Container(
      color: Colors.blue.withOpacity(0.3), // Blue content background
      child: Center(
        child: Text(
          'Events Content',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white, // White text for visibility
          ),
        ),
      ),
    );
  }
}
