

import 'dart:async';

import 'package:flame/game.dart';
import 'package:game/component/background.dart';
import 'package:game/component/bird.dart';
import 'package:game/component/ground.dart';
import 'package:game/component/pip_group.dart';
import 'package:flame/timer.dart';
import 'package:game/game/configuration.dart';

class FlappyBirdGame extends FlameGame{
  // Object of Bird Component
  late Bird bird;
  Timer interval =Timer(Config.pipeInterval,repeat: true,
  );

  @override
  Future<void> onLoad() async{
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      // PipeGroup(),
    ]);
    interval.onTick=()=> add(PipeGroup());
  }

  @override
  void update(double dt){
    super.update(dt);
    interval.update(dt);

  }
}