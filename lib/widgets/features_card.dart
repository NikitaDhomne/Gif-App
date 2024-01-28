import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KeyFeaturesItem extends StatelessWidget {
  final String title;
  final String image;
  final int color;
  KeyFeaturesItem(this.title, this.image, this.color);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenWidth = mediaQuery.size.width;
    return Container(
      height: screenHeight * 0.18,
      width: screenWidth * 0.37,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(color)),
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05, vertical: screenHeight * 0.03),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: screenHeight * 0.07,
            width: screenWidth * 0.15,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Center(
              child: Text(
            title,
            style:
                GoogleFonts.stylish(fontSize: 20, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          )),
        ],
      ),
    );
  }
}
