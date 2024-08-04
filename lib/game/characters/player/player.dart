import 'dart:async';

import 'package:flame/components.dart';

import '../../my_game.dart';
import '../../utils/assets.dart';
import '../../utils/sprite_loader.dart';
import 'animations/player_animations.dart';
import 'movement/player_movement_types.dart';

class Player extends SpriteAnimationGroupComponent<PlayerMovement>
    with HasGameRef<MyGame> {
  final PlayerMovement currentPlayerMovement;

  Player({
    required this.currentPlayerMovement,
  });

  @override
  FutureOr<void> onLoad() async {
    // Load sprite
    final spriteSheet = await SpriteLoader.load(
      assetPath: Assets.catSheet,
      srcSize: Vector2.all(32),
    );

    // Load animations
    animations = await PlayerAnimations.loadAnimations(
      spriteSheet: spriteSheet,
    );

    // Set current animation from the constructor
    current = currentPlayerMovement;

    return super.onLoad();
  }
}
