import 'package:flutter/material.dart';

class GameTreinta {
  final Color hiddenCard = Colors.transparent;
  List<Color>? gameColors;
  List<String>? gameImg;
  List<Color> cards = [
    Colors.green,
    Colors.yellow,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.blue
  ];
  final String hiddenCardpath = "assets/images/user.png";
  List<String> cards_list = [
    "assets/images/ganaste_cincuenta.png",
    "assets/images/perdiste_cincuenta.png",
    "assets/images/ganaste_cincuenta.png",
    "assets/images/perdiste_cincuenta.png",
  ];
  final int cardCount = 3;
  List<Map<int, String>> matchCheck = [];

  //methods
  void initGame() {
    gameColors = List.generate(cardCount, (index) => hiddenCard);
    gameImg = List.generate(cardCount, (index) => hiddenCardpath);
  }
}
