import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';

import '../my_game.dart';
import '../utils/assets.dart';

class Background extends SpriteComponent with HasGameRef<MyGame> {
  @override
  FutureOr<void> onLoad() async {
    // Load the background image
    final backgroundImage = await Flame.images.load(Assets.kitchen);

    // Set the sprite for the component
    sprite = Sprite(backgroundImage);

    // Adjust the size and position of the background to cover the screen
    size = gameRef.size;

    return super.onLoad();
  }
}
