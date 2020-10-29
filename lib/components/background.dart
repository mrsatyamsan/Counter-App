import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hex/hex-game.dart';

class BackGround {
  final HexGame hexGame;
  Rect bgRect;
  Paint paint;
  BackGround(this.hexGame) {
    paint = Paint()..color = Colors.black;
    bgRect = Rect.fromLTWH(
      0,
      0,
      hexGame.screenSize.width,
      hexGame.screenSize.height,
    );
  }

  void render(Canvas c) {
    c.drawRect(bgRect, paint);
  }

  void update(double t) {}
}
