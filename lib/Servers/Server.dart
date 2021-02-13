import 'package:dio/dio.dart';
import 'package:task_app/Models/Model.dart';

class ApiServer{

  String url ="https://run.mocky.io/v3/59ed4767-69e9-4b49-97a1-8d23510fa0c7";

  Future <List<Models>> getApi()async {

    List <Models> models = <Models>[];

    Response response = await Dio().get(url);

    List data = response.data;

    data.forEach((element) {
      models.add(Models.fromJason(element));
    });

    return models;

  }

}