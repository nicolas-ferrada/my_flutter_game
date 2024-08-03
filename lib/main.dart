import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'config/initial_configurations.dart';
import 'game/my_game.dart';

void main() {
  InitialConfigurations.init();

  final MyGame game = MyGame();
  runApp(GameWidget(game: kDebugMode ? MyGame() : game));
}
