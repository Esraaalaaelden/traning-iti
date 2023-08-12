import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../service/user_services.dart';

class body2 extends StatefulWidget {
  const body2({Key? key}) : super(key: key);

  @override
  State<body2> createState() => _body2State();
}

class _body2State extends State<body2> {
  List <Welcome>  WelcomeList= [];
  bool isLoading = true;

  getMyTodos() async{
    WelcomeList = await todos().getTodos();
    isLoading =false;

    setState(() {});

  }
  @override
  void initState(){
    super.initState();
    getMyTodos();
  }
  @override
  Widget build(BuildContext context) {
    return  isLoading?
        Center(child: CircularProgressIndicator(), ) : ListView.builder(
        itemCount: WelcomeList.length,

        itemBuilder: (BuildContext context , int index){
      return ListTile(
        title: Text (WelcomeList[index].title ?? "--"  ),

          trailing :Icon(Icons.title),
          leading: Text("${ index +1}"),

      );
        }

    );

  }
}
