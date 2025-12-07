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
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('ID Verified Successfully')));
    }
  }

  Future<void> _takePicture() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 400,
    );
    if (pickedImage == null) {
      return;
    }
    setState(() {
      selectedFile = File(pickedImage.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
      onPressed: _takePicture,
      label: Text('Add Image'),
      icon: Icon(Icons.add_a_photo),
    );
    if (selectedFile != null) {
      content = Image.file(
        selectedFile!,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('ID Verification')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(8),
              ),
              width: double.infinity,
              height: 200,
              child: content,
            ),
            SizedBox(height: 20),
            Text(selectedFile == null ? 'Upload or Capture ID' : ''),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate camera/image picker
                _verifyId(context);
                Navigator.pop(context);
              },
              child: const Text('Capture ID'),
            ),
          ],
        ),
      ),
    );
  }
}
