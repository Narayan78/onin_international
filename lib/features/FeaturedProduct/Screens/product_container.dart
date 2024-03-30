import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductContainerSmall extends StatelessWidget {

  final imageUrl;
  const ProductContainerSmall({super.key , required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Card(
        surfaceTintColor: Colors.white,
        elevation: 0.8,
        child: SizedBox(
          width: size.width * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.2,
                width: size.width * 0.45,
                decoration: BoxDecoration(
                  color: const Color(0xfff3f5f6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                 imageUrl,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 8.0),
                child: Text(
                  "ASUS VIVOBOOK PRO 14 R7 5800H 16GB",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: const Color(0xff232323),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 8.0),
                child: Text(
                  "रू.184,000",
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff255D95),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xffB77025),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                width: size.width * 0.45,
                height: size.height * 0.05,
                child: Center(
                  child: Text(
                    "ADD TO CART",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductContainerLarge extends StatelessWidget {
  const ProductContainerLarge({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Stack(
        children: [
          Card(
            surfaceTintColor: Colors.white,
            elevation: 0.8,
            child: SizedBox(
              width: size.width * 0.77,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.77,
                    decoration: BoxDecoration(
                      color: const Color(0xfff3f5f6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/computers/AsusVivobook.jpg",
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Gaming Laptop",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: const Color(0xff999999),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 8.0),
                    child: Text(
                      "ASUS VIVOBOOK PRO 14 R7 5800H 16GB",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: const Color(0xff232323),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(left: 15.0, right: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.star_border, color: Color(0xff777777), size: 15),
                        Icon(Icons.star_border, color: Color(0xff777777), size: 15),
                        Icon(Icons.star_border, color: Color(0xff777777), size: 15),
                        Icon(Icons.star_border, color: Color(0xff777777), size: 15),
                        Icon(Icons.star_border, color: Color(0xff777777), size: 15),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 8.0),
                    child: Text(
                      "रू.184,000",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff255D95),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffB77025),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    width: size.width * 0.77,
                    height: size.height * 0.05,
                    child: Center(
                      child: Text(
                        "ADD TO CART",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 2,
            child: Container(
              height: 22,
              width: 45,
              decoration: const BoxDecoration(
                color: Color(0xffDAA520),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Center(
                child: Text(
                  "- 8%",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
