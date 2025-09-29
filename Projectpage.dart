import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  final List projects = [
    Project(title: 'Weather App', description: 'A beautiful weather forecasting app with real-time updates', icon: Icons.cloud, color: Colors.blue),
    Project(title: 'Todo List', description: 'Task management made simple with intuitive design', icon: Icons.check_box, color: Colors.green),
    Project(title: 'Recipe Finder', description: 'Discover amazing recipes from around the world', icon: Icons.restaurant, color: Colors.orange),
    Project(title: 'Chat App', description: 'Real-time messaging with modern UI/UX', icon: Icons.chat, color: Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return _buildProjectCard(projects[index]);
        },
      ),
    );
  }

  Widget _buildProjectCard(Project project) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Project icon
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: project.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(project.icon, size: 30, color: project.color),
              ),
              SizedBox(width: 16),


              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
                    SizedBox(height: 4),
                    Text(project.description, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                  ],
                ),
              ),


              Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
            ],
          ),
        ),
      ),
    );
  }
}


class Project {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  Project({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}