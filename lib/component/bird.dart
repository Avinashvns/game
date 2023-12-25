
import 'package:flame/components.dart';
import 'package:game/game/assets.dart';
import 'package:game/game/bird_movement.dart';
import 'package:game/game/configuration.dart';
import 'package:game/game/flappy_bird_game.dart';

class Bird extends SpriteGroupComponent<BirdMovement> with HasGameRef<FlappyBirdGame>{
//   Constructor
Bird();

@override
  Future<void> onLoad() async {
   final birdMidFlap = await gameRef.loadSprite(Assets.birdMidFlap);
   final birdUpFlap = await gameRef.loadSprite(Assets.birdUpFlap);
   final birdDownFlap =await gameRef.loadSprite(Assets.birdDownFlap);

   size = Vector2(50, 40);
    position = Vector2(50, gameRef.size.y/2 - size.y/2);
   current = BirdMovement.middle;
   sprites = {
     BirdMovement.middle : birdMidFlap,
     BirdMovement.up : birdUpFlap,
     BirdMovement.down : birdDownFlap
   };
}

@override
  void update(double dt){
  super.update(dt);
//   Set Position of bird
  position.y +=Config.birdVelocity * dt;
}
}