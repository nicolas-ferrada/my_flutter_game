import 'dart:async';

import 'package:flame/game.dart';

import 'components/background.dart';

class MyGame extends FlameGame {
  @override
  FutureOr<void> onLoad() {
    add(Background());
    return super.onLoad();
  }
}
