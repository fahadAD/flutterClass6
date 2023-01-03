
import 'package:flutter/material.dart';


class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(

        child: Column(
          children: [



            RichText(
              text: TextSpan(
                text: 'Hello ',
                style: TextStyle(),
                children: const <TextSpan>[
                  TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),                ],
              ),
            ),

Row(
  children: [

    Expanded(
      flex: 1,
      child: Container(
          height: 100,
          width: 100,
          color: Colors.black,
          child: Text('')),
    ),
    Expanded(
      flex: 1,
      child: Container(
          height: 100,
          width: 100,
          color: Colors.teal,
          child: Text('')),
    ),
    Expanded(
      flex: 1,
      child: Container(
          height: 100,
          width: 100,
          color: Colors.lightGreen,
          child: Text('')),
    ),

  ],
),


          ],
        ),
      ),

    );
  }
}
