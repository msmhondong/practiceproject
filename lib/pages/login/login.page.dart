//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:practiceproject/pages/login/login.component.dart';


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
        bottomNavigationBar:bottomNavigationBar(),
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
    return
      Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      color: Color(0xFF052A60),
      padding: EdgeInsets.all(40),
      child:SingleChildScrollView(child: Container(
        width:MediaQuery.of(context).size.width,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          balanceDetails(),
          SizedBox(height:50),
          quickScanDetails(),
          SizedBox(height:50),
          billsPaymentOptions(),

      ]))
    ));
  }

  Widget balanceDetails(){
    return LoginComponent.balanceDetails();
  }

  Widget mainOptions({IconData icon = Icons.ac_unit, String lbl="", NormalClick event}){
    return LoginComponent.mainOptions(icon:icon, lbl:lbl, event:event);
  }

  Widget quickScanDetails() {
    return LoginComponent.quickScanDetails();
  }

  Widget billsPaymentOptions(){
    return LoginComponent.billsPaymentOptions();
  }

  Widget bottomNavigationBar(){
    return LoginComponent.bottomNavigationBar();
  }

} 

typedef NormalClick();
typedef GetNameEvent(String name);