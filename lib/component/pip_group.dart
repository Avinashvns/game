
import 'package:flame/components.dart';
import 'package:game/component/pipe.dart';
import 'package:game/game/pipe_position.dart';

class PipeGroup extends PositionComponent {
//   Constructor
PipeGroup();

@override
  Future<void> onLoad() async {
   addAll([
     Pipe(
     height: 200,
     pipePosition: PipePosition.top
   )
   ]);
}

}