import 'package:dio/dio.dart';
import 'package:untitled5/models/user_model.dart';
class todos {
  String url="https://jsonplaceholder.typicode.com/todos";
   getTodos() async{
    List <Welcome>  WelcomeList= [];
    final response = await Dio().get(url);
    var data = response.data;
    data.forEach( (element){
      Welcome todo=  Welcome.fromJson (element);
      WelcomeList.add(todo);
    });
    return WelcomeList;
  }
}