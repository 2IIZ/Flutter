import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// include the "part" directive.
// Without this, the build_runner will not produce any output.
part 'counter_animation.g.dart';

class CounterAnimation = _CounterAnimation with _$CounterAnimation;

abstract class _CounterAnimation with Store {
  late AnimationController controller;

  late Animation<double> counterScaleAnimation =
      Tween<double>(begin: 0.0, end: 100.0).animate(
    CurvedAnimation(
      parent: controller,
      curve: Curves.fastOutSlowIn,
    ),
  );

  @observable
  double counterScale = 0.01;
  double counterScaleStep = 0.1;

  double lastCounterScale = 0.01;

  void scaleIncrement() {
    final tempCounterScale = counterScale + counterScaleStep;
    counterScaleAnimation = Tween<double>(
      begin: lastCounterScale,
      end: tempCounterScale,
    ).animate(controller);
    lastCounterScale = tempCounterScale;
    controller.forward(from: 0.0);
  }
}
