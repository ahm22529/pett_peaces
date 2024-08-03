import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key, required this.img});
  final List img; // Assuming img is a list of URLs.

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        enlargeCenterPage: true,
        aspectRatio: 45.0 / 17,
        viewportFraction: 1.0, // Make the item take full width
        enableInfiniteScroll: true,
        scrollPhysics: const BouncingScrollPhysics(),
      ),
      items: img.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return FutureBuilder<Image>(
              future: _loadImage(url),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text('Error loading image'),
                  );
                } else {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Image.network(url, fit: BoxFit.cover),
                  );
                }
              },
            );
          },
        );
      }).toList(),
    );
  }

  Future<Image> _loadImage(String url) async {
    // This function ensures that the image is fully loaded
    // and returns an Image object to be used in the FutureBuilder.
    final completer = Completer<Image>();
    final image = Image.network(url);
    image.image.resolve(ImageConfiguration()).addListener(
      ImageStreamListener((imageInfo, synchronousCall) {
        completer.complete(image);
      }),
    );
    return completer.future;
  }
}
