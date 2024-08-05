import 'dart:async';

import 'package:flame/components.dart';

import 'package:flame_tiled/flame_tiled.dart';

import '../../utils/assets.dart';
import '../../utils/assets_loader.dart';

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
