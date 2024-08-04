import 'dart:async';

import 'package:flame/game.dart';

import 'characters/player/movement/player_movement_types.dart';
import 'characters/player/player.dart';
import 'environments/background.dart';

class MyGame extends FlameGame {
  @override
  FutureOr<void> onLoad() {
    add(Background());

    add(Player(currentPlayerMovement: PlayerMovement.run));

    return super.onLoad();
  }
}
