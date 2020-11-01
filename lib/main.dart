import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(children: [
      Container(
        color: Colors.white,
      ),
      ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: height * 0.5,
            width: width,
            child: Image.network(
              "https://source.unsplash.com/random?sig=27",
              fit: BoxFit.cover,
            ),
          )),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            )
          ],
          title: Text("SIGN UP"),
          centerTitle: true,
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.only(left: width * 0.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.4,
              ),
              CircleAvatar(
                radius: width * 0.13,
                backgroundImage: NetworkImage(
                  "https://source.unsplash.com/random?portrait",
                ),
              ),
              Text(
                "Marco Assensio",
              ),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text("722 Manhattan New York")
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //path.moveTo(0, size.height * 0.85);
    //path.lineTo(0, size.height);
    //path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height * 0.85);
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height * 0.85);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
