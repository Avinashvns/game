

import 'package:flame/game.dart';
import 'package:game/component/background.dart';

class FlappyBirdGame extends FlameGame{
  @override
  Future<void> onLoad() async{
    add(Background());
  }
}