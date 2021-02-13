import 'dart:ui';

import 'package:flutter/material.dart';

class backGrond extends StatefulWidget {
  @override
  _backGrondState createState() => _backGrondState();
}

class _backGrondState extends State<backGrond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

       child: Stack(
         children: [

           Image.network('https://images.unsplash.com/photo-1505118380757-91f5f5632de0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8c2VhfGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80'
             ,fit: BoxFit.fill,height: MediaQuery.of(context).size.height,),
           BackdropFilter(filter: ImageFilter.blur(
             sigmaX: 3.0,
             sigmaY: 3.0
           ),
             child: Center(
               child: Text("Hi Omar",style: TextStyle(fontSize: 30),),
             )
           ),
         ],
       ),

      ),
    );
  }
}
