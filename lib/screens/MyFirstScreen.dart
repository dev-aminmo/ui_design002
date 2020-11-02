import 'package:flutter/material.dart';
import 'package:ui_design002/shared_ui/myWidgets.dart';
import '../utilities/style.dart';
class MyFirstScreen extends StatefulWidget {
  @override
  _MyFirstScreenState createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
static  const _lightStyle = MyStyle.lightStyle;
static const _numbersStyle= MyStyle.numbersStyle;

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
              ),
              MyWidgets.drawAboutMeParagraph(),
              MyWidgets.drawFollowersTable(_lightStyle, _numbersStyle)
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
