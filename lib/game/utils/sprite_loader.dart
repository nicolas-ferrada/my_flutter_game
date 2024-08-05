import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:flame_tiled/flame_tiled.dart';

class AssetsLoader {
  static Future<SpriteSheet> loadSprite({
    required String assetPath,
    required Vector2 srcSize,
  }) async {
    return SpriteSheet(
      image: await Flame.images.load(assetPath),
      srcSize: srcSize,
    );
  }

  static Future<TiledComponent> loadTiledComponent({
    required String assetPath,
    required Vector2 tileSize,
  }) async {
    return await TiledComponent.load(
      assetPath,
      tileSize,
    );
  }
}
