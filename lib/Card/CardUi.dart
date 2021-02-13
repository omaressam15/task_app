import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {

  String image;

  String title;

  String subtitle;

  String description;

  HomeCard({this.image, this.title, this.subtitle, this.description});

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {

    return Padding(padding: EdgeInsets.only(left: 12,right: 12),

      child:Container(

        height: 170,

        width: MediaQuery.of(context).size.width*0.90,


        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF).withOpacity(0.9),

          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(

              children: [
                Padding(padding:EdgeInsets.only(left:20 ,top: 20,right: 15),
                  child: Align(

                    child:CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("${widget.image}"),
                    ),
                    alignment:Alignment.topLeft ,

                  ),
                ),

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text("${widget.title}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    Text("${widget.subtitle}",style: TextStyle(fontSize: 15,color: Colors.black54),),

                  ],
                ),

              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10,left: 20),
              child: Text("${widget.description}",style: TextStyle(fontSize: 15,color: Colors.black54,height: 1.6),),

            ),

          ],
        ),
      ),

    );


  }
}
