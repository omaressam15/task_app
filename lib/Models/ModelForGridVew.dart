
class ModeleGrid {

  String image;

  String title;

  List icon ;

  ModeleGrid({this.image, this.title, this.icon});


    factory ModeleGrid.fromJason(Map parsedJson){



    //List iconList = new List.from(imageIconFromJason);

    return ModeleGrid(
      image: parsedJson["image"],
      title:parsedJson["title"],
      icon: parsedJson["icon"],
    );
  }
}

/*class IconImage {

  List imageIcon;

  IconImage({this.imageIcon});

  factory IconImage.fromJason(Map parsedJson){

    return IconImage(
      imageIcon: parsedJson['iconImage'],
    );
  }
}*/
