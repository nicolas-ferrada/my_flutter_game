import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import '../movement/player_movement_types.dart';

class PlayerAnimations {
  static late final SpriteAnimationGroupComponent<PlayerMovement> animationSet;

  static Future<void> loadAnimations({
    required SpriteSheet spriteSheet,
  }) async {
    final idleAnimation = spriteSheet.createAnimation(
      row: 0,
      stepTime: 0.15,
      to: 8,
    );

    final walkAnimation = spriteSheet.createAnimation(
      row: 4,
      stepTime: 0.1,
      to: 8,
    );

    final runAnimation = spriteSheet.createAnimation(
      row: 6,
      stepTime: 0.1,
      to: 4,
    );

    final jumpAnimation = spriteSheet.createAnimation(
      row: 19,
      stepTime: 0.1,
      to: 4,
    );

    final fallAnimation = spriteSheet.createAnimation(
      row: 20,
      stepTime: 0.1,
      to: 4,
    );

    animationSet = SpriteAnimationGroupComponent<PlayerMovement>(
      animations: {
        PlayerMovement.idle: idleAnimation,
        PlayerMovement.walk: walkAnimation,
        PlayerMovement.run: runAnimation,
        PlayerMovement.jump: jumpAnimation,
        PlayerMovement.fall: fallAnimation,
      },
    );
  }
}
