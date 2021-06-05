import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';

class Home extends StatefulWidget{
 
  @override
  State<StatefulWidget> createState() {
   return _HomeState();
  }
}
class _HomeState extends State<Home>{
  
 @override
  Widget build(BuildContext context) {
    var messageText =TextEditingController();
    String title="";
    return Container(
      child:Column(
        children:[
          TextField(
            controller:messageText,
          ),
          RaisedButton(
            onPressed: () {
            setState((){
              title = messageText.text;
            });
              Navigator.push(context,
              MaterialPageRoute(builder: (context){
                return About(title);
              }));
            }, 
            child: Text("Go to About Screen"),
            ),
            ],
         ),
    );
  }

}