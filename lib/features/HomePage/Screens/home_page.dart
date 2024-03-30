import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onin/features/FeaturedProduct/Screens/product_container.dart';
import '../../CommonWidgets/custom_appbar.dart';
import 'components/double_line_text.dart';
import 'components/image_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Custom AppBar
              customAppBar(),

              // Image Slider
              const ImageSlider(
                imageUrls: [
                  'assets/predator.png',
                  'assets/macbook.png',
                  'assets/predator.png',
                ],
                slideDuration: Duration(seconds: 5),
                fit: BoxFit.cover,
              ),

              // Featured Product
              DoubleLineText(
                text: "FEATURED PRODUCTS",
                textStyle: GoogleFonts.khand(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductContainerSmall( imageUrl: "assets/computers/AsusVivobook.jpg"),
                    ProductContainerSmall(imageUrl: "assets/computers/AsusVivobook.jpg"),
                    ProductContainerSmall(imageUrl: "assets/computers/AsusVivobook.jpg"),
                    ProductContainerSmall(imageUrl: "assets/computers/AsusVivobook.jpg"),
                  ],
                ),
              ),

              // Special Offers
              const SizedBox(height: 20),
              DoubleLineText(
                text: "SPECIAL OFFERS",
                textStyle: GoogleFonts.khand(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductContainerLarge(),
                    ProductContainerLarge(),
                    ProductContainerLarge(),
                    ProductContainerLarge(),
                  ],
                ),
              ),

              // Laptops
              const SizedBox(
                height: 22,
              ),
              SingleLineText(
                text: "Laptops",
                textStyle: GoogleFonts.khand(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff245D93),
                ),
              ),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductContainerSmall(imageUrl: "assets/computers/AsusVivobook.jpg"),
                    ProductContainerSmall(imageUrl: "assets/computers/AsusVivobook.jpg"),
                    ProductContainerSmall(imageUrl: "assets/computers/AsusVivobook.jpg"),
                    ProductContainerSmall(imageUrl: "assets/computers/AsusVivobook.jpg"),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              SingleLineText(
                text: "Accessories",
                textStyle: GoogleFonts.khand(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff245D93),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductContainerSmall(imageUrl: "assets/Accessories/headphone1.png",),
                    ProductContainerSmall(imageUrl: "assets/Accessories/headphone2.png"),
                    ProductContainerSmall(imageUrl: "assets/Accessories/headphone1.png"),
                    ProductContainerSmall(imageUrl: "assets/Accessories/headphone2.png"),
                  ],
                ),
              ),


                 DoubleLineText(
                text: "Monitors",
                textStyle: GoogleFonts.khand(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 500),
            ],
          ),
        ),
      ),
    );
  }
}
