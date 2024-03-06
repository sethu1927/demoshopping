import 'package:demoshopping/cloths.dart';
import 'package:demoshopping/electronics.dart';
import 'package:demoshopping/medical.dart';
import 'package:demoshopping/newpage2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newmainpage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => newpage();
}

class newpage extends State{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Center(
            child: Text(' Demoshop ',
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.lightBlue[700]),
            ),
          ),

          backgroundColor: CupertinoColors.quaternarySystemFill,


          leading: CircleAvatar(
              radius: 20,
            backgroundColor: Colors.white38,
              child: Image.network(
              'https://th.bing.com/th/id/R.54e9ec5365eeb967838ffd2a35eda50b?rik=h%2bfY8HSuXACUPQ&riu=http%3a%2f%2fwww.hotavatars.com%2fwp-content%2fuploads%2f2019%2f01%2fI80W1Q0.png&ehk=NSQkB5B%2fUOzON7Gd8fGH9%2bEBxOki2BAu6FdDH0E1TGY%3d&risl=&pid=ImgRaw&r=0'),

          ),


          actions: [

            PopupMenuButton(

                onSelected: (value){
                  if(value == 0){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => medical() ));
                  }

                  if ( value == 1){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => electronics() ));
                  }

                },
                itemBuilder: (context){

                  return[
                   PopupMenuItem(value: 0, child: Text( 'Profile')),
                   PopupMenuItem(value: 1, child: Text(' Setting '),),

                  ];




            }),

          ],






          titleSpacing: 20,


        ),


      body: GridView.count(

        crossAxisCount: 1,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),


        children: [
          Container(
            child: InkWell(
              onTap: ( ) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => cloths()));
              }, child: Image.asset('asset/cloths.jpg'),
            ),
          ),



          Container(
            child: InkWell(
              onTap: ( ) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => electronics()));
              }, child: Image.asset('asset/electronics.jpg'),
            ),
          ),

          Container(
            child: InkWell(
              onTap: ( ) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => medical()));
              },child: Image.asset('asset/medical.jpg'),
            ),
          ),

          Container(
            child: InkWell(
              onTap: ( ) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => grocery()));
              },child: Image.asset('asset/grocery.jpg'),
            ),
          )
          
        ],
      
      ),
    
    );
  }
}
