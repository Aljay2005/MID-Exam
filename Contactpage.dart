import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final List contactItems = [
    ContactInfo(Icons.email, 'Email', 'alex@example.com', Colors.red),
    ContactInfo(Icons.phone, 'Phone', '+1 234 567 8900', Colors.green),
    ContactInfo(Icons.location_on, 'Location', 'San Francisco, CA', Colors.blue),
    ContactInfo(Icons.language, 'Website', 'www.alexjohnson.dev', Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),


              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Icon(Icons.contact_mail, size: 80, color: Colors.blue),
                    SizedBox(height: 20),
                    Text('Get In Touch', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87)),
                    SizedBox(height: 10),
                    Text('Feel free to reach out to me through any of these channels', style: TextStyle(fontSize: 16, color: Colors.grey[600]), textAlign: TextAlign.center),
                  ],
                ),
              ),

              SizedBox(height: 20),


              ...contactItems.map((item) => _buildContactItem(item)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactItem(ContactInfo info) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))],
      ),
      child: Row(
        children: [

          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: info.color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(info.icon, color: info.color, size: 24),
          ),
          SizedBox(width: 16),


          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(info.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87)),
                SizedBox(height: 4),
                Text(info.value, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ContactInfo {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  ContactInfo(this.icon, this.title, this.value, this.color);
}