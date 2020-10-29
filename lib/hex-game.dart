import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hex/components/background.dart';
import 'package:hex/components/character.dart';

class HexGame extends Game with TapDetector {
  Size screenSize;
  double tileSize;
  BackGround backGround;
  Character character;
  HexGame() {
    initialize();
  }
  void render(Canvas canvas) {
    backGround.render(canvas);
    character.render(canvas);
  }

  void update(double t) {
    character.update(t);
  }

  void initialize() async {
    resize(await Flame.util.initialDimensions());
    backGround = BackGround(this);
    character = Character(this);
  }

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 9;
    super.resize(size);
  }

  void onTapDown(TapDownDetails d) {
    if (character.flyRect.contains(d.globalPosition)) {
      character.onTapDown(); 
    }
  }
}
