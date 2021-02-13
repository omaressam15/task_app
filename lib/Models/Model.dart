class Models {

  String image;

  String title;

  String subtitle;

  String description;

  Models({this.image, this.title, this.subtitle, this.description});

  factory Models.fromJason(Map parsedJson){

    return Models(

      image: parsedJson['image'],
      title: parsedJson["title"],
      subtitle: parsedJson["subtitle"],
      description: parsedJson['Description'],
    );

  }

}