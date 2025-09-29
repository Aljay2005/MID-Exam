import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Reciprocal Colleges'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.home, size: 100, color: Colors.blue),
              ),
              SizedBox(height: 30),

              // Welcome title
              Text(
                'Welcome to Global Reciprocal Colleges',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),

              // Subtitle
              Text(
                'Explore the website for more information',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Quick navigation cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildQuickNavCard(Icons.person, 'CSS', Colors.grey),
                  _buildQuickNavCard(Icons.work, 'EDUC', Colors.blue),
                  _buildQuickNavCard(Icons.contact_mail, 'COA', Colors.yellow),
                  _buildQuickNavCard(Icons.person, 'CBAE', Colors.red),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuickNavCard(IconData icon, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: color),
          SizedBox(height: 8),
          Text(label, style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }
}
