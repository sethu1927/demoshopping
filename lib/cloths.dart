import 'package:flutter/material.dart';

class cloths extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

       appBar: AppBar(
         title: Text(' Grocery '),
       backgroundColor: Colors.purpleAccent,
       ),

      body: Column(
        children: [
           Container(
             width: 200, height: 100,
             child: Image.network(" https://i5.walmartimages.com/asr/36ab62be-94c2-4f19-b1f8-af9bfccd0376_1.dded77da10d06f4b6b4f213afb605997.jpeg"),
           ),
            ],


          ),

      );







  }
}
