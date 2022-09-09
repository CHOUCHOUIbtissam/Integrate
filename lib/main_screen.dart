import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:integrate/screen/Clubs.dart';
import 'package:integrate/screen/Contact.dart';
import 'package:integrate/screen/Experiences.dart';
import 'package:integrate/screen/Resources.dart';

import 'components/appBar.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key,}) : super(key: key);
  //final User user;
  @override
  _MainScreen createState() => _MainScreen();
}
class _MainScreen extends State<MainScreen> {
  /*User? user = FirebaseAuth.instance.currentUser;
  UserModel connectedUser = UserModel();

  Future<void> getUserData() async{
    FirebaseFirestore.instance.collection("users").doc(user?.uid).get().then((_)=> print('Success'));
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance.collection("users").doc(user?.uid).get();
    connectedUser = UserModel.fromMap(documentSnapshot);
  }
  @override
  void initState(){
    super.initState();
    setState(() {
      getUserData();
    });
  }*/
  GlobalKey _NavKey = GlobalKey();
  var TitlePages = ['Contact','Clubs','Experiences','Resources'];
  List PagesAll=[Contact(),Clubs(),Experiences(),Resources()] ;
  var myindex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0XffF9FEFF),
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        backgroundColor: Colors.transparent,
        key: _NavKey,
        items:[
         /* Icon(Icons.add, size: 30,color: Colors.white,),
          Icon(Icons.list, size: 30,color: Colors.white,),
          Icon(Icons.compare_arrows, size: 30,color: Colors.white,),
          Icon(Icons.add, size: 30, color: Colors.white,),*/
          ImageIcon(AssetImage('icons/Contact.png'),size:33,color: Colors.white),
          ImageIcon(AssetImage('icons/Club.png'),size:33,color: Colors.white),
          ImageIcon(AssetImage('icons/exper.png'),size:33,color: Colors.white),
          ImageIcon(AssetImage('icons/Res.png'),size:33,color: Colors.white),

        ],
        buttonBackgroundColor: Color(0xff4d5dfa),
        onTap: (index){
          setState(() {
            myindex = index;
          });
        },
        animationCurve: Curves.fastLinearToSlowEaseIn, color: Color(0xff4d5dfa),
        animationDuration: const Duration(seconds: 2 ),
      ),
      body: PagesAll[myindex],
      appBar:PreferredSize(
           preferredSize: Size.fromHeight(100.0),
          child:AppBarPage(Heading:TitlePages[myindex]),
      ),
    );
  }
}

