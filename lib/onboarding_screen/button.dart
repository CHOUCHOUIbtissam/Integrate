import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String label;
  final bool  hasBeenPressed;
  final Function() ? onTap;
  final double height;
  final double width;
  final double size;
  const MyButton( {Key? key, required this.label,required this.height,required this.width,required this.size,required this.hasBeenPressed, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: hasBeenPressed ? Color(0xFFFFFFFF): Color(0xff4D5DFA),
        ),
        child: Text(
          label,
          style: GoogleFonts.inter(
            color: hasBeenPressed ? Color(0xff4D5DFA): Color(0xffffffff),
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
