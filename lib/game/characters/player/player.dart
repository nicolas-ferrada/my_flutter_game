import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:my_flutter_game/game/characters/player/animations/player_animations.dart';
import 'package:my_flutter_game/game/my_game.dart';

import '../../utils/assets.dart';
import 'movement/player_movement_types.dart';

class Player extends SpriteAnimationGroupComponent<PlayerMovement>
    with HasGameRef<MyGame> {
  final PlayerMovement currentPlayerMovement;

  Player({
    required this.currentPlayerMovement,
  });

  @override
  FutureOr<void> onLoad() async {
    final sprite = await _loadSprite(Assets.catSheet);
    await PlayerAnimations.loadAnimations(spriteSheet: sprite);
    animations = PlayerAnimations.animationSet.animations;
    current = currentPlayerMovement;
    return super.onLoad();
  }

  Future<SpriteSheet> _loadSprite(String playerSprite) async {
    return SpriteSheet(
      image: await Flame.images.load(playerSprite),
      srcSize: Vector2.all(32),
    );
  }
}
