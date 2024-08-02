import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'my_game.dart';

void main() {
  final MyGame game = MyGame();
  runApp(GameWidget(game: kDebugMode ? MyGame() : game));
}
