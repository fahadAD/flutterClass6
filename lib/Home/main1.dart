import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_practise/Home/main2.dart';
import 'package:flutter_practise/Home/main3.dart';
import 'package:flutter_practise/Home/main4.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int selected=0;
final List=[
  Profile(),
  Search(),
  Favourite(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(
       elevation: 40,
       title: Text('APPLICATION'),
       leading: Icon(Icons.account_balance),
       actions: [ IconButton(
         icon: const Icon(Icons.shopping_cart),
         tooltip: 'Open shopping cart',
         onPressed: () {
           // handle the press
         },
       ),],
     ),
drawer: Drawer(
  child: Column(
    children: [
      ListTile(
        onTap: (){},
        leading: Icon(Icons.person_pin),
        title: Text("Sami"),
        subtitle: Text("helio"),
        trailing: Icon(Icons.phone_bluetooth_speaker_outlined),
      ),
      ListTile(
        onTap: (){},
        leading: Icon(Icons.person_pin),
        title: Text("Fahad"),
        subtitle: Text("how are you"),
        trailing: Icon(Icons.phone_bluetooth_speaker_outlined),
      ),
      ListTile(
        onTap: (){},
        leading: Icon(Icons.person_pin),
        title: Text("Sad"),
        subtitle: Text("helio"),
        trailing: Icon(Icons.phone_bluetooth_speaker_outlined),
      ),
      ListTile(
        onTap: (){},
        leading: Icon(Icons.person_pin),
        title: Text("Fahim"),
        subtitle: Text("helio"),
        trailing: Icon(Icons.phone_bluetooth_speaker_outlined),
      ),
      ListTile(
        onTap: (){},
        leading: Icon(Icons.person_pin),
        title: Text("Shahariar"),
        subtitle: Text("helio"),
        trailing: Icon(Icons.phone_bluetooth_speaker_outlined),
      ),

    ],
  ),
),


body: List[selected],
     bottomNavigationBar: BottomNavigationBar(
       selectedFontSize: 40,
       elevation: 40,
       backgroundColor: Colors.blueGrey,
       selectedItemColor: Colors.teal,
       unselectedItemColor: Colors.black,
       onTap: (value){
         setState(() {
           selected=value;
         });
       },
       currentIndex: selected,
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
         BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favourite'),
         BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

       ],
     ),


    );
  }
}


