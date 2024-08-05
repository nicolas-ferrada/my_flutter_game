import 'dart:async';

import 'package:flame/components.dart';

import 'package:flame_tiled/flame_tiled.dart';

class KitchenLevel extends World {
  late TiledComponent tiledComponent;

  @override
  FutureOr<void> onLoad() async {
    tiledComponent = await TiledComponent.load(
      'kitchen-level.tmx',
      Vector2.all(31),
    );

    add(tiledComponent);
    return super.onLoad();
  }
}
