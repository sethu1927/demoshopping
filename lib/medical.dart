import 'package:flutter/material.dart';

class medical extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => page3();
}

class page3 extends State {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(


      body:  Stack(
      children: [

        Container(
          height: 10,
          width: 60,
          color: Colors.redAccent,
          child: (Text(' item- 1')),
        )
      ],


    )
    );
  }
}
