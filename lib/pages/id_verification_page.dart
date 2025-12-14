import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class IdVerificationPage extends StatefulWidget {
  const IdVerificationPage({super.key});

  @override
  State<IdVerificationPage> createState() => _IdVerificationPageState();
}

class _IdVerificationPageState extends State<IdVerificationPage> {
  File? selectedFile;

  void _verifyId(BuildContext context) {
    if (selectedFile == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please capture or upload an ID first')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('ID Verified Successfully')),
      );
      Navigator.pop(context);
    }
  }

  Future<void> _takePicture() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 400,
    );

    if (pickedImage == null) return;

    setState(() {
      selectedFile = File(pickedImage.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.add_a_photo, size: 40, color: Colors.blueGrey),
        SizedBox(height: 8),
        Text('Tap to capture ID'),
      ],
    );

    if (selectedFile != null) {
      content = ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.file(
          selectedFile!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }

    return Scaffold(
      // 🔷 Gradient AppBar
      appBar: AppBar(
        title: const Text('ID Verification'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0F2027),
                Color(0xFF203A43),
                Color(0xFF2C5364),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

      // 🔷 Gradient Background
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE3F2FD),
              Color(0xFFFFFFFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verify Your Identity',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900],
                    ),
              ),
              const SizedBox(height: 20),

              // 🔷 Image Capture Card
              GestureDetector(
                onTap: _takePicture,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 220,
                    alignment: Alignment.center,
                    child: content,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Text(
                selectedFile == null
                    ? 'Please capture a clear image of your government-issued ID.'
                    : 'Image captured successfully.',
                style: const TextStyle(height: 1.5),
              ),

              const Spacer(),

              // 🔷 Verify Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: Colors.blueGrey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () => _verifyId(context),
                  child: const Text(
                    'Verify ID',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
