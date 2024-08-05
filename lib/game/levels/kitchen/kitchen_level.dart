import 'dart:async';

import 'package:flame/components.dart';

import 'package:flame_tiled/flame_tiled.dart';
import 'package:my_flutter_game/game/utils/sprite_loader.dart';

import '../../utils/assets.dart';

class KitchenLevel extends World {
  late TiledComponent tiledComponent;

  @override
  FutureOr<void> onLoad() async {
    tiledComponent = await AssetsLoader.loadTiledComponent(
      assetPath: Assets.kitchenLevel,
      tileSize: Vector2.all(31),
    );

    add(tiledComponent);

    return super.onLoad();
  }
}
