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
        body: Column(
          children: [

            // Custom AppBar
            customAppBar(),

            // Image Slider
            const ImageSlider(
              imageUrls: [
                'assets/spinner.png',
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

             const ProductContainer(),

          ],
        ),
      ),
    );
  }
}
