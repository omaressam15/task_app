
import 'package:flutter/material.dart';
import 'package:task_app/Card/CardForGaradian.dart';
import 'package:task_app/Card/CardUi.dart';
import 'package:task_app/Models/Model.dart';
import 'package:task_app/Models/ModelForGridVew.dart';
import 'package:task_app/Servers/ApiServiceForGrid.dart';
import 'package:task_app/Servers/Server.dart';

class TaskUi extends StatefulWidget {
  @override
  _TaskUiState createState() => _TaskUiState();
}

class _TaskUiState extends State<TaskUi> {

  List <Models> models = <Models>[];

  List <ModeleGrid> modelGrid = <ModeleGrid>[];

  getFromApiRequest() async {
    models = await ApiServer().getApi();

    modelGrid = await ApiServiceGrid().getApiGrid();

    print("---------------------");
    modelGrid.forEach((element) {
     print(element.image);
     print(element.title);
     print(element.icon);
    });
    print("---------------------");

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFromApiRequest();
  }

   List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey[50],

      body: Column(

          children: [
            Stack(

              children: [
                Container(

                  height: 260,

                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),

                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Padding(padding:EdgeInsets.only(top: 25),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Beranda",style: TextStyle(fontSize:35,color: Colors.white,fontWeight: FontWeight.bold),),
                            Icon(Icons.search_rounded),
                          ],

                        ),
                        Padding(padding: EdgeInsets.only(top: 35)),

                        Text("Connect to people like you",style: TextStyle(fontSize:17,color: Colors.white,),),

                      ],
                    ),
                  ),

                  alignment: Alignment.topCenter,

                  padding: EdgeInsets.only(top: 20),

                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(35),bottomLeft: Radius.circular(35) ),
                    gradient: LinearGradient(
                        begin:Alignment.topLeft ,
                        end:Alignment.bottomRight ,

                        colors: [Colors.blue, Colors.blue.shade700]),
                  ),
                ),

                SizedBox(
                  height: 352,
                ),
                Positioned(


                  top: MediaQuery.of(context).size.height/ 4.2,

                  height: 170,

                  width: MediaQuery.of(context).size.width,


                  /* child: CarouselSlider(

                  options: CarouselOptions(

                    height: 180,
                    aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    disableCenter: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.easeInOutBack,
                    enlargeCenterPage: true,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),

                  items: imgList.map((item) => Container(

                    decoration: BoxDecoration(

                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20)),

                      image: DecorationImage(image:NetworkImage(item,scale:1,),
                          fit: BoxFit.cover,alignment: Alignment.center
                      ),
                    ),

                  )).toList(),

                ),*/

                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,

                      itemCount: models.length,

                      itemBuilder: (context,index){
                        return HomeCard(
                          image: models[index].image,

                          title: models[index].title,

                          subtitle: models[index].subtitle,

                          description: models[index].description,

                        );

                      }

                    //   bottom: 3,

                  ),
                ),
              ],

            ),
              Padding(padding: EdgeInsets.only(top:20 ,left:20,bottom: 10 ),

               child:Align(
              child: Text("Explore Communities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              alignment: Alignment.centerLeft,
            )
          ),

            Expanded(
              child:
              GridView.builder(
                  shrinkWrap: true,

                  padding: EdgeInsets.symmetric(vertical: 10),

                  itemCount: modelGrid.length,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      mainAxisSpacing: 10,

    ),

                  itemBuilder:(context,index){

                    return GridViewCard(
                      image: modelGrid[index].image,
                      title: modelGrid[index].title,
                      imageIcon: modelGrid[index].icon,
                    );
                  }
              ),
            ),

          ],
        ),



    );
  }
}
