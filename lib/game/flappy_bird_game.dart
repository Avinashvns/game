

import 'package:flame/game.dart';
import 'package:game/component/background.dart';
import 'package:game/component/bird.dart';
import 'package:game/component/ground.dart';
import 'package:game/component/pip_group.dart';

class FlappyBirdGame extends FlameGame{
  // Object of Bird Component
  late Bird bird;

  @override
  Future<void> onLoad() async{
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      PipeGroup(),
    ]);
  }
}