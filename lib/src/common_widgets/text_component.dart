import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyTextWidget extends StatelessWidget {

   MyTextWidget({Key? key,required this.txt,this.font=20, this.weight=FontWeight.bold}) : super(key: key);

  String txt;
  double font;
  FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: GoogleFonts.lato(
        color: Colors.black,
        fontSize: font,
        fontWeight: weight,

      ),
    );
  }
}
