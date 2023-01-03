
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<bool> _selectedFruits = <bool>[true, false, false];
  final List<bool> _selectedVegetables = <bool>[false, true, false];
  final List<bool> _selectedWeather = <bool>[false, false, true];


  List<Widget> fruits = <Widget>[
    Text('Apple'),
    Text('Banana'),
    Text('Orange')
  ];

   List<Widget> vegetables = <Widget>[
    Text('Tomatoes'),
    Text('Potatoes'),
    Text('Carrots')
  ];

   List<Widget> icons = <Widget>[
    Icon(Icons.sunny),
    Icon(Icons.cloud),
    Icon(Icons.ac_unit),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ToggleButtons(
          selectedColor: Colors.pink,

          isSelected: _selectedFruits,
        onPressed: (value){
          setState(() {
            _selectedFruits[value]=!_selectedFruits[value];
          });
        },children: fruits,),
          ToggleButtons(
            selectedColor: Colors.lightGreen,

            isSelected: _selectedVegetables,
            onPressed: (value){
              setState(() {
                _selectedVegetables[value]=!_selectedVegetables[value];
              });
            },children: vegetables,),
          ToggleButtons(
            selectedColor: Colors.amber,

            isSelected: _selectedWeather,
            onPressed: (value){
              setState(() {
                _selectedWeather[value]=!_selectedWeather[value];
              });
            },children: icons,),
        ],
      ),
    );
  }
}
