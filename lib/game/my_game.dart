import 'dart:async';

import 'package:flame/game.dart';

import 'characters/player/movement/player_movement_types.dart';
import 'characters/player/player.dart';

class MyGame extends FlameGame {
  @override
  FutureOr<void> onLoad() {
    add(Player(
      currentPlayerMovement: PlayerMovement.idle,
      playerPosition: Vector2(50, 492),
      playerSize: Vector2(120, 120),
    ));

    return super.onLoad();
  }
}
