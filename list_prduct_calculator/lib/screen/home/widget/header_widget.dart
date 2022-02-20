import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Dynamic",
          style: GoogleFonts.barlow(
            textStyle: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
        ),
        Text(
          "Price List",
          style: GoogleFonts.barlow(
            textStyle: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
        ),
        Row(
          children: [
            Text(
              "Calculator",
              style: GoogleFonts.barlow(
                textStyle: const TextStyle(
                  letterSpacing: 0,
                  color: Colors.black54,
                  fontWeight: FontWeight.w800,
                  fontSize: 34,
                ),
              ),
            ),
            Text(
              ".",
              style: GoogleFonts.barlow(
                textStyle: const TextStyle(
                  letterSpacing: 1,
                  color: Color.fromARGB(255, 3, 223, 120),
                  fontWeight: FontWeight.w800,
                  fontSize: 34,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
