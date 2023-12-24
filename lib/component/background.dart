
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:game/game/assets.dart';
import 'package:game/game/flappy_bird_game.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame>{
//   Constructor
  Background();

  @override
  Future<void> onLoad()async{
    
    // Image load
    final background = await Flame.images.load(Assets.background);
    size = gameRef.size;

    // Image Call here
    sprite = Sprite(background);
  }
}