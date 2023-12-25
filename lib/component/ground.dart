import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';
import 'package:game/game/assets.dart';
import 'package:game/game/flappy_bird_game.dart';
import 'package:flame/components.dart';

class Ground extends ParallaxComponent<FlappyBirdGame>{
//   Constructor
Ground();

@override
  Future<void> onLoad()async{
    final ground =await Flame.images.load(Assets.ground);
    parallax= Parallax([
      ParallaxLayer(ParallaxImage(ground , fill: LayerFill.none))
    ]);
}

@override
  void update(double dt){
  super.update(dt);
}
}