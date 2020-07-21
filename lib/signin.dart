import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class signinp extends StatefulWidget {
  @override
  _signinpState createState() => _signinpState();
}

class _signinpState extends State<signinp> {

  Color chatorange = Colors.deepOrangeAccent;
  var firebaseAuth = FirebaseAuth.instance;

  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  get auth => null;

  Future<void> _handleSignIn(e) async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              color: chatorange,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    5,10,5,10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(onTap: () async {

                      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
                      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
                      final AuthCredential credential =await GoogleAuthProvider.getCredential(accessToken: googleAuth.accessToken, idToken: googleAuth.idToken, );
                      print(credential);
                      await FirebaseAuth.instance.signInWithCredential(credential);

                      Navigator.of(context).pushNamed('chat');

                    },
                      child: Card(color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Image.asset('assets/images/g.png',height: 25,width: 25,),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
