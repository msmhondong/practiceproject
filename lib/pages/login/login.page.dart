//import 'dart:html';

import 'package:flutter/material.dart';


class UserLoginPage extends StatefulWidget{
  UserLoginPage();
  @override
  _UserLoginPageState createState() => _UserLoginPageState();
}
class _UserLoginPageState extends State<UserLoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110), 
          child: header(),
        ),
        body:body(),
      )
    );
  }

  Widget header() {
  return Container(
    padding: EdgeInsets.only(top: 10),
    color: Color(0xFF052A60), height: 110, child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Center(
          child:Text("FortunePay",
          style: TextStyle(color: Colors.white))),
          SizedBox(height:10),

          const Divider(
            color: Colors.white,
            height: 5,
            thickness: 1,
          ),

          Container(
            padding:EdgeInsets.only(left:20, right:20),
            child:Row(     
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
            children:[
              Column(
                children:[
                  Text("Angela Yu",
                    style: TextStyle(color: Colors.white)),

                  Text("1234567890",
                    style: TextStyle(color: Colors.white)),
                ]),

            Row(children:[
              IconButton(icon: Icon(Icons.add_alert, color: Colors.white), onPressed: null),
              IconButton(icon: Icon(Icons.menu, color: Colors.white), onPressed: null),
            ])
          ],
        ))
      ],
    )
  );
  }

  Widget body(){
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color(0xFF052A60),
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          balanceDetails(),
          quickScanDetails(),
      ])
    );
  }

  Widget balanceDetails(){
    return Container(
      width:MediaQuery.of(context).size.width,
      child: Column(children:[
      Text("Available Balance", style:TextStyle(color:Colors.white)),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
        Text("P1000.00", style:TextStyle(color: Colors.white, fontSize:40)),
        IconButton(icon: Icon(Icons.add_box, color: Color(0xFFFFB32C)), onPressed: null),
      ])
    ]));
  }

  Widget quickScanDetails() {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(icon: Icon(Icons.settings_overscan, color: Color(0xFFFFB32C)), onPressed: null),
          IconButton(icon: Icon(Icons.send, color: Color(0xFFFFB32C)), onPressed: null),
          IconButton(icon: Icon(Icons.bookmark, color: Color(0xFFFFB32C)), onPressed: null),
          IconButton(icon: Icon(Icons.call_received, color: Color(0xFFFFB32C)), onPressed: null),
        ],
      )
    );
  }

} 