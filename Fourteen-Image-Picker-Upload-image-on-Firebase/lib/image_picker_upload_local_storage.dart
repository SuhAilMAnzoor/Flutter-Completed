import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class ImagePickerUploadLocalStorage extends StatefulWidget {
  const ImagePickerUploadLocalStorage({super.key});

  @override
  State<ImagePickerUploadLocalStorage> createState() =>
      _ImagePickerUploadLocalStorageState();
}

class _ImagePickerUploadLocalStorageState
    extends State<ImagePickerUploadLocalStorage> {
  final _imagePicker = ImagePicker();
  File? imageFile;
  String? savedImagePath;

  @override
  void initState() {
    super.initState();
    loadSavedImage(); // Load saved image when app starts
  }

  // Function to pick an image from the gallery
  Future<void> getImage() async {
    final pickedFile =
    await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      File tempFile = File(pickedFile.path);
      String savedPath = await saveImageLocally(tempFile);
      setState(() {
        imageFile = File(savedPath);
        savedImagePath = savedPath;
      });
    }
  }

  // Function to save the picked image locally
  Future<String> saveImageLocally(File image) async {
    final directory =
    await getApplicationDocumentsDirectory(); // Get local storage path
    final localPath = '${directory.path}/saved_image.jpg'; // Define file path
    await image.copy(localPath); // Copy image to local storage
    return localPath;
  }

  // Function to load the saved image
  Future<void> loadSavedImage() async {
    final directory = await getApplicationDocumentsDirectory();
    final localPath = '${directory.path}/saved_image.jpg';
    if (await File(localPath).exists()) {
      setState(() {
        savedImagePath = localPath;
      });
    }
  }

  // Function to show full-screen image
  void showFullScreenImage(File image) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.black,
        insetPadding: EdgeInsets.zero,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.file(
                image,
                fit: BoxFit.contain, // Ensure full view without cropping
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 30),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Image Picker Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageFile != null
              ? InkWell(
            onTap: () => showFullScreenImage(imageFile!),
            child: Image.file(
              imageFile!,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
          )
              : const Text("No Image Selected"),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: getImage,
            child: const Text("Pick & Save Image"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (savedImagePath != null) {
                setState(() {
                  imageFile = File(savedImagePath!);
                });
                showFullScreenImage(imageFile!);
              }
            },
            child: const Text("View Saved Image"),
          ),
        ],
      ),
    );
  }
}
