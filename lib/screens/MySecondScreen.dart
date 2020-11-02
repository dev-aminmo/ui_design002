import 'package:flutter/material.dart';

class MySecondScreen extends StatefulWidget {
  @override
  _MySecondScreenState createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  var _lightStyle = TextStyle(color: Color(0xff707f78));
  var _numbersStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          color: Color(0xffe4eae3),
        ),
        Container(
          width: width,
          height: height * 0.5,
          child: Image.network(
            "https://source.unsplash.com/random?background?dark",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: height * 0.25 - width * 0.2,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.2,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: width * 0.2,
                ),
              ),
              Opacity(
                opacity: 0.2,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: width * 0.16,
                ),
              ),
              CircleAvatar(
                radius: width * 0.13,
                backgroundImage: NetworkImage(
                  "https://scontent-mrs2-2.xx.fbcdn.net/v/t1.15752-9/120353954_2881968388698308_5402361746325279901_n.jpg?_nc_cat=101&ccb=2&_nc_sid=ae9488&_nc_eui2=AeG48m1ZwyH-pD0x6078mmhpY_pTgCppoP1j-lOAKmmg_VSHiE2kunPCsfY5uKQFaAVtqF2FaATBni-aZm-wq4J7&_nc_ohc=DazkpPBhHNEAX96Wp6-&_nc_ht=scontent-mrs2-2.xx&oh=0b32cc12c2d4dc30977c1783d0b7ec10&oe=5FC591A9",
                ),
              ),
            ],
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Icon(
              Icons.dehaze,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.28,
                    ),
                    Text(
                      "Meziane Khalil",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.3,
                          fontSize: 22,
                          color: Color(0xffe4eae3)),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "Boukadir Chlef",
                      style: TextStyle(
                          color: Color(0xffe4eae3),
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: height * 0.51,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
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
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Divider(
                color: Color(0xffcacaca),
                height: 3,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ABOUT ME",
                      style: TextStyle(
                        letterSpacing: 1.3,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
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
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "FRIENDS (25)",
                      style: TextStyle(
                        letterSpacing: 1.3,
                      ),
                    ),
                    Container(
                      height: height * 0.1,
                      child: ListView.builder(
                        itemBuilder: (ctx, index) {
                          return Row(
                            children: [
                              CircleAvatar(
                                radius: width * 0.07,
                                backgroundImage: NetworkImage(
                                    "https://source.unsplash.com/random?sig=$index?portrait"),
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                            ],
                          );
                        },
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
