import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';

class SpriteLoader {
  static Future<SpriteSheet> load({
    required String assetPath,
    required Vector2 srcSize,
  }) async {
    return SpriteSheet(
      image: await Flame.images.load(assetPath),
      srcSize: srcSize,
    );
  }
}
