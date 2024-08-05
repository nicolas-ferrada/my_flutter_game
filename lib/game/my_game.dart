import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'characters/player/movement/player_movement_types.dart';
import 'characters/player/player.dart';
import 'levels/kitchen/kitchen_level.dart';

class MyGame extends FlameGame {
  final kitchenLevel = KitchenLevel();

  @override
  FutureOr<void> onLoad() {
    camera = CameraComponent.withFixedResolution(
      world: kitchenLevel,
      width: 434,
      height: 155,
    );
    camera.viewfinder.anchor = Anchor.topLeft;

    add(kitchenLevel);

    add(Player(
      currentPlayerMovement: PlayerMovement.idle,
      playerPosition: Vector2(50, 492),
      playerSize: Vector2(120, 120),
    ));

    return super.onLoad();
  }
}
