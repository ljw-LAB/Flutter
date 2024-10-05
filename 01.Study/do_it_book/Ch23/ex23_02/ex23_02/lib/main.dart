// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Memo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NativePluginWidget(),
    );
  }
}

class NativePluginWidget extends StatefulWidget {
  const NativePluginWidget({super.key});

  @override
  State<NativePluginWidget> createState() => _NativePluginWidgetState();
}

// class _NativePluginWidgetState extends State<NativePluginWidget> {
//   XFile? _image;
//   Future getGalleryImage() async {
//     var image = await ImagePicker().pickImage(source: ImageSource.gallery);
//     setState(() {
//       _image = image;
//     });
//   }

//   Future getCameraImage() async {
//     var image = await ImagePicker().pickImage(source: ImageSource.camera);
//     setState(() {
//       _image = image;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Picker'),
//       ),
//       body: Container(
//         color: Colors.indigo,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: getGalleryImage,
//                 child: Text('gallery'),
//               ),
//               Center(
//                   child: _image == null
//                       ? Text(
//                           'No image selected',
//                           style: TextStyle(color: Colors.white),
//                           //
//                         )
//                       : CircleAvatar(
//                           backgroundImage: FileImage(File(_image!.path)),
//                           radius: 100,
//                         )),
//               ElevatedButton(onPressed: getCameraImage, child: Text('camera'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class _NativePluginWidgetState extends State<NativePluginWidget> {
  File? _image;
  final picker = ImagePicker();

  Future getGalleryImage() async {
    final image = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = image as File?;
    });
  }

  Future getCameraImage() async {
    final image = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _image = image as File?;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: getGalleryImage,
                child: Text('gallery'),
              ),
              Center(
                  child: _image == null
                      ? Text(
                          'No image selected',
                          style: TextStyle(color: Colors.white),
                          //
                        )
                      : CircleAvatar(
                          backgroundImage: FileImage(File(_image!.path)),
                          radius: 100,
                        )),
              ElevatedButton(onPressed: getCameraImage, child: Text('camera'))
            ],
          ),
        ),
      ),
    );
  }
}

// class _NativePluginWidgetState extends State<NativePluginWidget> {
//   File? _image;
//   final picker = ImagePicker();

//   Future getImage() async {
//     final pickedFile = await picker.getImage(source: ImageSource.camera);

//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Picker Example'),
//       ),
//       body: Center(
//         child:
//             _image == null ? Text('No image selected.') : Image.file(_image!),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: getImage,
//         tooltip: 'Pick Image',
//         child: Icon(Icons.add_a_photo),
//       ),
//     );
//   }
// }
