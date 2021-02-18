import 'package:flutter/material.dart';



class Body extends StatelessWidget {

  Widget card(){
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,height: 200,color: Colors.red,);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
         children: [

           card(),
           card(),
           card(),
           card()
          
         ],
      ),
    );
  }
}