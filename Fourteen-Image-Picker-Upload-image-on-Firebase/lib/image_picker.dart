import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImagePickers extends StatefulWidget {
  const ImagePickers({super.key});

  @override
  State<ImagePickers> createState() => _ImagePickersState();
}

class _ImagePickersState extends State<ImagePickers> {
  final  _imagepacker = ImagePicker();
  File? imageFile;

  // Function for picking images from gallery
  getImage() async{
   final pickedFile = await _imagepacker.pickImage(source: ImageSource.gallery);

   if(pickedFile != null) {
     imageFile = File(pickedFile.path);
     log(imageFile.toString());
     setState(() {});
   }
  }
     // Create a FirebaseStorage instance
  final storageRef = FirebaseStorage.instance.ref();

  uploadFile() async{
   UploadTask uploadTask = storageRef.child('images/1.jpg').putFile(imageFile!);
   print("File Uploaded");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Image Picker Screen"),
      ),
      body: Column(
        children: [
          imageFile != null
        ?  Image.file(imageFile!,
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.8,)
        : ElevatedButton(onPressed: (){
           getImage();
          }, child: Text("Pick Image")),
          ElevatedButton(onPressed: (){
            uploadFile();
          }, child: Text("Upload File"))
        ],
      ),
    );
  }
}
