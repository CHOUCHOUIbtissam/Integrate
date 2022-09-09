import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Box_Contact extends StatelessWidget {
  final String title1,title2, image;
  final double nb;
  const Box_Contact({Key? key, required this.image, required this.title1, required this.title2, required this.nb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AspectRatio(
        aspectRatio: 3,
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff0013FF),
              borderRadius: BorderRadius.circular(18)
          ),
          child: Row(
            children: <Widget>[
              Expanded(child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: <Widget>[
                    Text(title1, style: GoogleFonts.inter(
                      fontSize:  20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text(title2, style: GoogleFonts.inter(
                      fontSize:   nb,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ],
                ),
              )),
              SizedBox(width: 5,),
              AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,

                ),
              ),
            ],
          ),
        )
    );
  }}