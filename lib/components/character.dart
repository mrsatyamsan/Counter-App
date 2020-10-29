import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hex/hex-game.dart';

class Character {
  final HexGame hexGame;
  Rect flyRect;
  bool shouldFall;
  Character(this.hexGame) {
    flyRect = Rect.fromLTWH(30, 100, hexGame.tileSize, hexGame.tileSize);
    shouldFall = false;
  }

  void render(Canvas c) {
    c.drawRect(flyRect, Paint()..color = Colors.green);
  }

  void update(double t) {
    if (shouldFall) {
      flyRect = flyRect.translate(0, 12 * hexGame.tileSize * t);
    }
  }

  void onTapDown() {
    if (shouldFall == false) shouldFall = true;
  }
}
