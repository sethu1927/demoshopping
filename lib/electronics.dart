import 'package:flutter/material.dart';

class electronics extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
      children: [

        Center(
          child: Container(
            height: 30,
            width: 20,
            color: Colors.cyanAccent,
            child: (Image.network('https://images.pexels.com/photos/4022090/pexels-photo-4022090.jpeg?auto=compress&cs=tinysrgb&w=600'))
          ),






        )
      ],


    )
    );
  }
}
