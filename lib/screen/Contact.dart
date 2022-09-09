import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/Box_Contact.dart';
class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height/20),
                Box_Contact(image: "icons/promo.png", title1: 'Your Promo', title2: 'ESI-2CP',nb: 15,),
                SizedBox(height: size.height/20),
                Box_Contact(image: "icons/group.png", title1: 'Your Group', title2: 'group 10',nb: 15,),
                SizedBox(height: size.height/20),
                Box_Contact(image: "icons/saved.png", title1: 'Saved', title2: 'save your favourite resources',nb:12),
                Container(
                  margin: EdgeInsets.symmetric(vertical: size.height*0.04),
                )
              ],
            )
        )
    );

  }
}

