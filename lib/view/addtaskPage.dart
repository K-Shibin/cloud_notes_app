import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  DateTime? reminderDate;
  File? selectedImage;

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
      });
    }
  }

  Future<void> pickReminderDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        reminderDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Note'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image picker
            Center(
              child: GestureDetector(
                onTap: pickImage,
                child: selectedImage == null
                    ? Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[700],
                        ),
                      )
                    : Image.file(
                        selectedImage!,
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            SizedBox(height: 20),
            // Title field
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            // Description field
            TextField(
              controller: descriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            // Reminder picker
            Row(
              children: [
                Text(
                  reminderDate == null
                      ? 'No reminder set'
                      : 'Reminder: ${reminderDate?.toLocal().toString().split(' ')[0]}',
                ),
                Spacer(),
                TextButton(
                  onPressed: pickReminderDate,
                  child: Text('Set Reminder'),
                ),
              ],
            ),
            SizedBox(height: 30),
            // Save Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle saving the note with the image, title, description, and reminder
                  print('Note Saved!');
                },
                child: Text('SAVE NOTE'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
