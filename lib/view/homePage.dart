import 'package:cloud_notes_app/routes/routeNames.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Sample list of notes
  List<String> notes = [
    'Meeting notes',
    'Shopping list',
    'Flutter project ideas',
    'Personal reminders',
    'Workout schedule',
    'Travel itinerary'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
        backgroundColor: Colors.blueAccent,
      ),
      body: notes.isEmpty
          ? Center(
              child: Text(
                'No notes available',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    title: Text(notes[index]),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle navigation to the note details
                      print('Tapped on: ${notes[index]}');
                    },
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.homePage);
          print('Add new note button pressed');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
