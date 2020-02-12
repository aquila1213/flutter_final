import 'package:flutter/material.dart';
import 'package:flutter_final/Routes/PrivacyPolicyRoute.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'Routes/CategoryRoute.dart';
import 'Routes/NestedTabBar/NestedTabRoute.dart';
import 'RatingBar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class materialButton extends MaterialButton {}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final emailField = TextField(
      obscureText: false,
      cursorColor: Colors.red,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "E-mail",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(19.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(19.0))),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Login App"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 155.0,
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 45.0),
                  emailField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(
                    height: 35.0,
                  ),
                  Material(
                    elevation: 15.0,
                    borderRadius: BorderRadius.circular(30.0),
//                  color: Color(0xff01A0C7),
                    color: Colors.blueGrey,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryRoute()),
                        );
                      },
                      child: Text("Login",
                          textAlign: TextAlign.center,
                          style: style.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      onLongPress: () {
                        // show snackbar
                        Scaffold.of(context).showSnackBar(SnackBar(
                          // set content of snackbar
                          content: Text("Hello! I am SnackBar :)"),
                          // set duration
                          duration: Duration(seconds: 3),
                          // set the action
                          action: SnackBarAction(
                              label: "Hit Me (Action)",
                              onPressed: () {
                                // When action button is pressed, show another snackbar
                                Scaffold.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      "Hello! I am shown becoz you pressed Action :)"),
                                ));
                              }),
                        ));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("moh.abbasi1213@Gmail.com"),
              accountName: Text("Moh. Abbasi"),
              currentAccountPicture: CircleAvatar(
                child: Text("MA"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Categories"),
              onTap: () {
                // Close the drawer
                Navigator.pop(context);

                //Open the New Route
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryRoute()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.tab_unselected),
              title: Text("Tab Bar"),
              onTap: () {
                // Close the drawer
                Navigator.pop(context);

                //Open the New Route
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NestedTabRoute()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add_to_photos),
              title: Text("Add Items"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share with Friends"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text("Rate and Review"),
              onTap: () {
                // Close the drawer
                Navigator.pop(context);

                _showDialog(context, rating);
              },
            ),
            ListTile(
              leading: Icon(Icons.flag),
              title: Text("Privacy Policy"),
              onTap: () {
                // Close the drawer
                Navigator.pop(context);

                //Open the New Route
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrivacyPolicyRoute()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context, var rating) {
// flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text(
          "Rate us here:",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.red, fontSize: 25),
        ),
        content: new RatingBar(),
        actions: <Widget>[
          new FlatButton(
            child: new Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
