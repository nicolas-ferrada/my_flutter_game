import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:flame_tiled/flame_tiled.dart';

import 'assets.dart';

class AssetsLoader {
  static Future<SpriteSheet> loadSprite({
    required String assetPath,
    required Vector2 srcSize,
  }) async {
    Flame.images.prefix = Assets.basePath;

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
      prefix: Assets.basePath,
    );
  }
}
