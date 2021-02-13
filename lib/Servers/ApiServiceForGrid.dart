
 import 'package:dio/dio.dart';
import 'package:task_app/Models/ModelForGridVew.dart';

class ApiServiceGrid{

  String url = "https://run.mocky.io/v3/c3ba82f8-116e-416e-a9e5-ed1b084756c8";

  Future <List<ModeleGrid>> getApiGrid() async {

    List <ModeleGrid> models = <ModeleGrid>[];

    Response response = await Dio().get(url);

    List data = response.data;

    data.forEach((element) {
      models.add(ModeleGrid.fromJason(element));
    });

    return models;

}

 }