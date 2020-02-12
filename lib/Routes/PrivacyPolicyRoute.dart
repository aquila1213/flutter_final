import 'package:flutter/material.dart';

class PrivacyPolicyRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                        child: Text(
                      "A privacy policy is a statement or a legal document that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client's data. It fulfils a legal requirement to protect a customer or client's privacy.\n",
                      maxLines: 20,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.deepPurple[500],
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,

                        fontFamily: 'Dancing',
                        fontSize: 28,
                        shadows: [
                          Shadow(
                            blurRadius: 5.0,
                            color: Colors.blue[300],
                            offset: Offset(3.0, 3.0),
                          ),
                        ],
                      ),
                    )),
                    RaisedButton(
                      onPressed: () {
                        // Navigate back to first route when tapped.
                        Navigator.pop(context);
                      },
                      child: Text('Go To Main Page!'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
