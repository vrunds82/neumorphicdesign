

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class nuescreenpage extends StatefulWidget {
  @override
  _nuescreenpageState createState() => _nuescreenpageState();
}

class _nuescreenpageState extends State<nuescreenpage> {
  var switchValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 28,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(elevation: 8,color: Colors.grey,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NeumorphicIcon(
                        Icons.arrow_back,style: NeumorphicStyle(depth: 7,

                        color: Colors.black,

                      ),
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(elevation: 8,color: Colors.grey,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NeumorphicIcon(
                        Icons.settings,style: NeumorphicStyle(depth: 7,

                        color: Colors.black,

                      ),
                        size: 25,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30,),


              ],
            ),
            SizedBox(height: 36,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(elevation: 5,color: Colors.grey,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
                          child: Text(
                            "Sign Up",style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),

                          ),
                        )
                      ],),
SizedBox(height: 20,),
                    Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(40))),
                            depth: -4,
                            color: Colors.grey,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(Icons.person,size: 40,),
                        )
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("First Name"),
                        ],
                      ),
                    ),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Neumorphic(style: NeumorphicStyle(
                       depth: -3,color: Colors.grey,
                       shadowLightColor: Colors.grey,
                       shadowDarkColor: Colors.grey,
                       boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24)))
                     ),
                       child: TextField(
                         decoration: InputDecoration(
                           contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                           border: InputBorder.none,
                           focusedBorder: InputBorder.none,
                           enabledBorder: InputBorder.none,
                           errorBorder: InputBorder.none,
                           disabledBorder: InputBorder.none,
                         ),
                       ),
                     ),
                   ),


                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Password"),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Neumorphic(style: NeumorphicStyle(
                          depth: -3,color: Colors.grey,
                          shadowLightColor: Colors.grey,
                          shadowDarkColor: Colors.grey,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24)))
                      ),
                        child: TextField(obscureText: true,

decoration: InputDecoration(
  contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
  border: InputBorder.none,
  focusedBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                 Card(color: Colors.grey,elevation: 7,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20.0),
                   ),
                   child: Padding(
                   padding: const EdgeInsets.fromLTRB(30, 12, 30, 12),
                   child: Text(
                     "Sign in",
                     style: TextStyle(
                       fontWeight: FontWeight.w600
                     ),
                   ),
                 ),)
                    ,
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
