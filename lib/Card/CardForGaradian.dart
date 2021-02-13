import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/Models/ModelForGridVew.dart';
import 'package:task_app/Servers/ApiServiceForGrid.dart';

class GridViewCard extends StatefulWidget {

  String image;

  String title;

  List imageIcon = [] ;


  GridViewCard({this.image, this.title, this.imageIcon});

  @override
  _GridViewCardState createState() => _GridViewCardState();
}

  class _GridViewCardState extends State<GridViewCard> {
  @override
  Widget build(BuildContext context) {

    return Padding(padding: EdgeInsets.symmetric(horizontal: 10),

      child: Container(

        transformAlignment: Alignment.center,

        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),

          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(padding:EdgeInsets.only(left:20 ,top: 20,right: 15),
              child: Align(

                child:CircleAvatar(
                  radius: 27,
                  backgroundImage: NetworkImage("${widget.image}"),
                ),
                alignment:Alignment.topLeft ,

              ),
            ),
            Padding(padding: EdgeInsets.only(left: 20,bottom: 20,top: 15),
              child:Text("${widget.title}",style: TextStyle(fontSize: 15,color: Colors.black,height: 1.6,fontWeight: FontWeight.bold),),

            ),

                Padding(padding: EdgeInsets.only(left: 20 ),
                  child: Row(
                    children: [

                    CircleAvatar(
                        radius: 12,

                        backgroundImage: NetworkImage("${widget.imageIcon.join()}"),
                      ),

                      Padding(padding: EdgeInsets.only(right: 7)),

                    ],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
