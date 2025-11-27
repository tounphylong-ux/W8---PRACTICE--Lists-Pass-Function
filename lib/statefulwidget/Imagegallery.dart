import 'package:flutter/material.dart';

List<String> images = [
  "assets/bird.jpg",
  "assets/bird2.jpg",
  "assets/insect.jpg",
  "assets/girl.jpg",
  "assets/man.jpg",
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the DEBUG banner in debug mode
      home: ImageGallery(),
    ));

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key}); 

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {

  int _currentImageIndex = 0;// to keep track of the currently displayed image index


  void _goToPreviousImage() { //method to navigate to the previous image (Function to go to the previous image)
    setState(() {
      if (_currentImageIndex > 0) {
        _currentImageIndex--;
      } else {

        _currentImageIndex = images.length - 1;
      }
    });
  }

  void _goToNextImage() {
    setState(() {
      if (_currentImageIndex < images.length - 1) {//method to post to the next image (Function to Go to Next Image)
        _currentImageIndex++;
      } else {

        _currentImageIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image', 
            onPressed: _goToPreviousImage,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: _goToNextImage, 
            ),
          ),
        ],
      ),
      body:Image.asset(images[_currentImageIndex]),
  
    );
  }
}