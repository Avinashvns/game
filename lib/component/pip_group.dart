
import 'package:flame/components.dart';
import 'package:game/component/pipe.dart';
import 'package:game/game/configuration.dart';
import 'package:game/game/flappy_bird_game.dart';
import 'package:game/game/pipe_position.dart';

class PipeGroup extends PositionComponent with HasGameRef<FlappyBirdGame> {
//   Constructor
PipeGroup();

@override
  Future<void> onLoad() async {
  position.x = gameRef.size.x;
   addAll([
     Pipe(
     height: 200,
     pipePosition: PipePosition.top
   ),
     Pipe(
         height: 300,
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