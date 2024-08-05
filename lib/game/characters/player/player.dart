import 'dart:async';

import 'package:flame/components.dart';

import '../../my_game.dart';
import '../../utils/assets.dart';
import '../../utils/assets_loader.dart';
import 'animations/player_animations.dart';
import 'movement/player_movement_types.dart';

class Player extends SpriteAnimationGroupComponent<PlayerMovement>
    with HasGameRef<MyGame> {
  final PlayerMovement currentPlayerMovement;
  final Vector2 playerPosition;
  final Vector2 playerSize;

  Player({
    required this.currentPlayerMovement,
    required this.playerPosition,
    required this.playerSize,
  });

  @override
  FutureOr<void> onLoad() async {
    // Load player sprite
    final spriteSheet = await AssetsLoader.loadSprite(
      assetPath: Assets.catSheet,
      srcSize: Vector2.all(32),
    );

    // Load player animations
    animations = await PlayerAnimations.loadAnimations(
      spriteSheet: spriteSheet,
    );

    // Set player size from the constructor
    size = playerSize;

    // Set player position from the constructor
    position = playerPosition;

    // Set current animation from the constructor
    current = currentPlayerMovement;

    return super.onLoad();
  }
}
