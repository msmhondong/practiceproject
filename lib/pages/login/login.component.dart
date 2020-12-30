import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginComponent{

  static Widget mainOptions({IconData icon = Icons.ac_unit, String lbl="", NormalClick event}){
    return Container(
      child: Column(children:[
        IconButton(icon: Icon(icon, color: Color(0xFFFFB32C)), onPressed: (){
          if(event != null){
            event();
          }
        }),
        Text(lbl, style:TextStyle(color: Color(0xFF052A60), fontSize:10)),
      ])
    );
  }

   static Widget quickScanDetails() {
    return Container(
      padding: EdgeInsets.only(top:5),
      height: 80,
      //width: MediaQuery.of(context).size.width-60, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius. circular(15), 
        color: Colors.white, 
        boxShadow:[
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 7),)
        ]),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          mainOptions(icon:Icons.settings_overscan, lbl:"SCAN QR", event:(){
            print("Scan QR");
          }),
          mainOptions(icon:Icons.send, lbl:"TRANSFER", event:(){
            print("Transfer");
          }),
          mainOptions(icon:Icons.bookmark, lbl:"MY QR", event:(){
            print("My QR");
          }),
          mainOptions(icon:Icons.call_received, lbl:"RECEIVE", event:(){
            print("Receive");
          }),          
        ],
      )
    );
  }

  static Widget balanceDetails(){
    return Container(
      color: Color(0xFF052A60),
      //padding: EdgeInsets.only(bottom: 5),
      //width:MediaQuery.of(context).size.width,
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

 static Widget billsPaymentOptions(){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("BILLS PAYMENT"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              mainOptions(icon:Icons.phonelink_setup_outlined, lbl:"Buy Load", event:(){
              print("Buy Load");
            }),
            mainOptions(icon:Icons.trending_up_outlined, lbl:"Electricity", event:(){
              print("Electricity");
            }),
            mainOptions(icon:Icons.water_damage_rounded, lbl:"Water", event:(){
              print("Water");
            }),
            mainOptions(icon:Icons.phone_android_rounded, lbl:"Telco", event:(){
            print("Telco");
            }),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              mainOptions(icon:Icons.house_siding, lbl:"Government", event:(){
              print("Government Payments");
            }),
            mainOptions(icon:Icons.signal_wifi_4_bar, lbl:"Cable", event:(){
              print("Cable & Internet");
            }),
            mainOptions(icon:Icons.card_travel_rounded, lbl:"Travel", event:(){
              print("Travel");
            }),
            mainOptions(icon:Icons.more_horiz_rounded, lbl:"See More", event:(){
            print("See More");
            }),
            ]
          )
        ],
    ));
  }

  static Widget bottomNavigationBar(){
    return Container(
      //color: Color(0xFF052A60),
      height:70,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              mainOptions(icon:Icons.home, lbl:"Home", event:(){
                print("Home");
              }),
              mainOptions(icon:Icons.card_membership, lbl:"Saved Cards", event:(){
                print("Saved Cards");
              }),
              mainOptions(icon:Icons.horizontal_split, lbl:"Transaction", event:(){
                print("Transaction");
              })

            ]
          )
      ])


    );
  }




}


typedef NormalClick();
typedef GetNameEvent(String name);