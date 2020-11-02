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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'sfdisplay',
          textTheme: TextTheme(
              bodyText2: TextStyle(
                  color: Colors.black, fontSize: 16, letterSpacing: 0.8))),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _lightStyle = TextStyle(color: Color(0xff707f78));
  var _numbersStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(children: [
      Container(
        color: Color(0xffe4eae3),
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
              color: Color(0xffe4eae3),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Color(0xffe4eae3),
              ),
            )
          ],
          title: Text(
            "SIGN UP",
            style: TextStyle(letterSpacing: 0.8, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.only(
              left: width * 0.07, right: width * 0.07, bottom: height * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.35,
              ),
              CircleAvatar(
                radius: width * 0.13,
                backgroundImage: NetworkImage(
                  "https://source.unsplash.com/random?portrait",
                ),
              ),
              Text(
                "Marco Assensio",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                    color: Color(0xff444a43)),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: _lightStyle.color,
                  ),
                  Text(
                    "722 Manhattan New York",
                    style: TextStyle(
                        color: Color(0xff484b46),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  )
                ],
              ),
              Text(
                "ABOUT ME",
                style: _lightStyle.copyWith(fontSize: 14),

                // style: TextStyle(color: Color(0xff838383)),
              ),
              ShaderMask(
                shaderCallback: (rectangle) {
                  return LinearGradient(
                          colors: [Colors.black, Colors.transparent],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)
                      .createShader(Rect.fromLTRB(
                          0, 0, rectangle.width, rectangle.height));
                },
                child: Text(
                    "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "FOLLOWER",
                        style: _lightStyle,
                      ),
                      Text(
                        "2318",
                        style: _numbersStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "FOLLOWING",
                        style: _lightStyle,
                      ),
                      Text(
                        "788",
                        style: _numbersStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "FRIENDS",
                        style: _lightStyle,
                      ),
                      Text(
                        "168",
                        style: _numbersStyle,
                      ),
                    ],
                  ),
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
