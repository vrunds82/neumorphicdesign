import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class livechatpage extends StatefulWidget {
  @override
  _livechatpageState createState() => _livechatpageState();
}

class _livechatpageState extends State<livechatpage> {
  TextEditingController chatcontroll = new TextEditingController();

  Color chatorange = Colors.deepOrangeAccent;

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(

          appBar: AppBar(automaticallyImplyLeading: false,
            backgroundColor:chatorange,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Icon(Icons.arrow_back),
                Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.only(left: 10, top: 15, bottom: 10),
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/user.jpeg'),
                        ))),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Meccy",

                ),

                // For Adjusting Space
                Opacity(
                  opacity: 0,
                  child: Container(
                      height: 30,
                      width: 30,
                      margin: EdgeInsets.only(left: 20, top: 15, bottom: 10,right: 0),
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/user.jpeg'),
                          ))),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
           // centerTitle: true,
            actions: <Widget>[
              Icon(
                Icons.call,
                color: Colors.white,
              ),
              SizedBox(width: 30,),
              Icon(
                Icons.videocam,
                color: Colors.white,
              ),
              SizedBox(width: 15,),
            ],
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  reverse: true,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            height: 30,
                            width: 30,
                            margin:
                            EdgeInsets.only(left: 20, top: 25, bottom: 10),
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/user.jpeg'),
                                ))),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Container(decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.grey, Colors.blueGrey.withOpacity(0.3)]),
                            borderRadius: BorderRadius.only(topRight:  Radius.circular(18),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(18),
                                topLeft: Radius.circular(29)),
                          ),

                              /*elevation: 5,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(18),
                                    topRight: Radius.circular(18),
                                    bottomLeft: Radius.circular(0),
                                    topLeft: Radius.circular(29)),

                                *//* side: BorderSide(width: 1, color: Colors.green)*//*
                              ),*/
                              child:Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 3),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Sounds great",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        "00:36",textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [chatorange, Colors.yellow.withOpacity(0.6)]),
                                borderRadius: BorderRadius.only(topRight:  Radius.circular(30),
                                    bottomLeft: Radius.circular(18),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(18)),
                              ),


                              /* shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(0),
                                    topRight: Radius.circular(29),
                                    bottomLeft: Radius.circular(18),
                                    topLeft: Radius.circular(18)),

                                *//* side: BorderSide(width: 1, color: Colors.green)*//*
                              )*/
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 5),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Great news...hold on a second",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        "00:35",textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                              height: 30,
                              width: 30,
                              margin:
                              EdgeInsets.only(left: 3, top: 2, bottom: 0,right: 12),
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/user2.jpeg'),
                                  ))),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    // Text input
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 0, top: 0),
                        child: Container(
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            controller: chatcontroll,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                  BorderSide(color: Colors.grey.withOpacity(0.6), width: 0.0),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                filled: true,
                                contentPadding: EdgeInsets.only(
                                    left: 8, right: 8, top: 0, bottom: 0),
                                fillColor: Colors.grey.withOpacity(0.2),
                                hintText: "Type message here",hintStyle: TextStyle(
                                fontSize: 14
                            )
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.send,
                        color: chatorange,
                        size: 34,
                      ),
                    ),
                    // Send Message Button
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          )),
    );
  }
}
