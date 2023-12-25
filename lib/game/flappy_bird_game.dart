

import 'package:flame/game.dart';
import 'package:game/component/background.dart';
import 'package:game/component/ground.dart';

class FlappyBirdGame extends FlameGame{
  @override
  Future<void> onLoad() async{
    addAll([
      Background(),
      Ground()
    ]);
  }
}