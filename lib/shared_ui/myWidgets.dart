import 'package:flutter/material.dart';
class MyWidgets {

  static Widget  drawFollowersTable(TextStyle _lightStyle,TextStyle _numbersStyle){
    return Row(
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
    );
  }
  static Widget drawAboutMeParagraph(){
    return ShaderMask(
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
    );
  }


}