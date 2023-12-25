
import 'dart:math';

import 'package:flame/components.dart';
import 'package:game/component/pipe.dart';
import 'package:game/game/configuration.dart';
import 'package:game/game/flappy_bird_game.dart';
import 'package:game/game/pipe_position.dart';

class PipeGroup extends PositionComponent with HasGameRef<FlappyBirdGame> {
//   Constructor
PipeGroup();

final _random = Random();

@override
  Future<void> onLoad() async {
  position.x = gameRef.size.x;

  final heightMinusGround = gameRef.size.y- Config.groundHeight;
  final spacing = 100 + _random.nextDouble() * (heightMinusGround/4);
  final centerY =spacing + _random.nextDouble() * (heightMinusGround - spacing);

   addAll([
     Pipe(
     height: centerY - spacing/2,
     pipePosition: PipePosition.top
   ),
     Pipe(
         height: heightMinusGround - (centerY + spacing/2),
         pipePosition: PipePosition.bottom
     ),
   ]);
}

@override
  void update(double dt){
  super.update(dt);
  position.x -=Config.gameSpeed * dt;

}

}