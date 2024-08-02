import 'package:flame/flame.dart';
import 'package:flutter/material.dart';

class InitialConfigurations {
  static void init() {
    WidgetsFlutterBinding.ensureInitialized();

    Flame.device.setLandscape();

    Flame.device.fullScreen();
  }
}
