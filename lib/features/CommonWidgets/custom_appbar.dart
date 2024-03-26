import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../colors.dart';

Widget customAppBar() {
  return SizedBox(
    child: Column(
      children: [
        // First container
        Container(
          height: 35,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: appBarLightBlue,
          ),
          child: Center(
              child: Text(
            "Connect. Create. Conquer.",
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: const Color(0xFFFFFFFF),
              fontWeight: FontWeight.w500,
            ),
          )),
        ),

        // Second container
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 15.0, top: 5.0, bottom: 10, right: 15.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/onin_logo.png",
                  width: 100,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 68, 68, 68),
                    size: 23,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_outlined,
                    color: Color.fromARGB(255, 68, 68, 68),
                    size: 23,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Color.fromARGB(255, 68, 68, 68),
                    size: 23,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Color.fromARGB(255, 68, 68, 68),
                    size: 23,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
