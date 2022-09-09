import 'package:integrate/styles/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Color kPrimaryColor = Color(0xffD9D9D9);
Color kSecondaryColor = Color(0xff4D5DFA);

final kTitle = GoogleFonts.roboto(
  fontSize: SizeConfig.blockSizeH! * 7,
  color: kSecondaryColor,
);

final kBodyText1 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 4.5,
  fontWeight: FontWeight.bold,
);
// our default Shadow
const kDefaultShadow = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
  color: Colors.black12, // Black color with 12% opacity
);