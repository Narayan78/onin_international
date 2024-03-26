


import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Column(
        children: [
          Container(
            height: 184,
            width: 184,
            decoration: BoxDecoration(
             color: const Color(0xfff3f5f6),
              borderRadius: BorderRadius.circular(10),
            
            ),
            child: Image.network("https://onin.com.np/assets/images/169633162239.png"),
            
          ),
          const Text("Product Name", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}