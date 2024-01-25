

import 'package:clickaeventsp/screen/main%20manu/searchBar.dart';
import 'package:clickaeventsp/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../profile/ProfilePage.dart';
import '../../navbar.dart';
import 'HomePage.dart';
// import 'calander.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});
  


  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  var currentIndex = 0;


  @override
  Widget build(BuildContext context) {


     return Scaffold(
       drawer: Navbar(),
       appBar: AppBar(
         backgroundColor: colorRed,
         centerTitle: true,
         title: Text("Click A Event",style: TextStyle(color: Colors.white),

         ),

         actions: [
           IconButton(onPressed: (){
             showSearch(
                 context: context,
                 delegate: Search());
           },
               icon: Icon(Icons.search))
         ],


       ),
       backgroundColor: Colors.white,
       bottomNavigationBar: BottomNavigationBar(

         currentIndex: currentIndex,

         type: BottomNavigationBarType.fixed,

         onTap: (index){
           currentIndex = index;
         },

         items: [

           BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
           BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search" ),
           BottomNavigationBarItem(icon: Icon(Icons.calendar_view_month_rounded),label:"Calendar" ),
           BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label:"Account", ),
           BottomNavigationBarItem(icon: Icon(Icons.menu),label:"Menu" ),


         ],

       ),


       body: getBodyWiget(),
     );
  }
  getBodyWiget() {
  return (currentIndex==0)? HomePage(title: 'HomePage',):Container();
  }

}