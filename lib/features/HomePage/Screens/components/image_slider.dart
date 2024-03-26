
import 'dart:async';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imageUrls;
  final Duration slideDuration;
  final BoxFit fit;

  const ImageSlider({
    super.key, 
    required this.imageUrls,
    this.slideDuration = const Duration(seconds: 3),
    this.fit = BoxFit.cover,
  });

  @override
  ImageSliderState createState() => ImageSliderState();
}

class ImageSliderState extends State<ImageSlider> {
  late PageController _pageController;
  late int _currentPage;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _currentPage = 0;
    _startAutoSlide();
  }

  @override
  void dispose() {
    _stopAutoSlide();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(widget.slideDuration, (Timer timer) {
      if (_currentPage < widget.imageUrls.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    });
  }

  void _stopAutoSlide() {
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165.0, // Adjust height as needed
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.imageUrls.length,
        onPageChanged: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          return Image.asset(
            widget.imageUrls[index],
            fit: widget.fit,
          );
        },
      ),
    );
  }
}
