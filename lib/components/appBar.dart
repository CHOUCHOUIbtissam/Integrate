import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarPage extends StatelessWidget implements PreferredSizeWidget{
  final String Heading;
  const AppBarPage({ Key? key,required this.Heading }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {

    return AppBar(
            backgroundColor: Color(0xff4d5dfa),
            toolbarHeight: 100,
            elevation: 0,

            title: Text(Heading,),
                titleTextStyle: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
               ) ,
            actions: [
              Row(
                children: [
                  Container(
                    height: 40,width: 40,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 2
                              ,spreadRadius: 3,
                              color: Color(0xffF2B022)
                          )
                        ],
                        shape: BoxShape.circle,
                        color: Color(0xffF2B022)
                    ),
                    child: const Icon(Icons.search,size: 20,
                    ),
                  ),
                  SizedBox(width: 14,),
                  Container(
                    height: 40,width: 40,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 2,spreadRadius: 3,
                              color: Color(0xffF2B022)
                          )
                        ],
                        shape: BoxShape.circle,
                        color: Color(0xffF2B022)
                    ),
                    child: const Icon(Icons.notifications,size: 20,
                    ),
                  ),
                  SizedBox(width: 14,),  Container(
                    height: 40,width: 40,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 2,spreadRadius: 3,
                              color: Color(0xffF2B022)
                          )
                        ],
                        shape: BoxShape.circle,
                        color: Color(0xffF2B022)
                    ),
                    child: const Icon(Icons.account_circle_outlined,size: 30,
                    ),
                  ),
                  SizedBox(width: 26,)
                ],
              )
            ],
          );
  }

}


