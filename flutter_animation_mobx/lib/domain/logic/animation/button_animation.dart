import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_mobx/common/color_math.dart';
import 'package:mobx/mobx.dart';

// include the "part" directive.
// Without this, the build_runner will not produce any output.
part 'button_animation.g.dart';

class ButtonAnimation = _ButtonAnimation with _$ButtonAnimation;

abstract class _ButtonAnimation with Store {
  late AnimationController controller;
  late final Animation<double> buttonZoomAnimation = CurvedAnimation(
    parent: controller,
    curve: Curves.fastOutSlowIn,
  );

  @observable
  double buttonScale = 1.0;

  // Reset to 1.0 and then animate down to 0.8 and to 1.0 again.
  // Simulates the press of a button
  void scaleAnimation() {
    controller.forward(from: 1.0).then((_) {
      controller.reverse().then((_) {
        controller.forward();
      });
    });
  }

  late Animation<Color?> buttonColorAnimation;
  @observable
  Color? buttonColor = Colors.deepPurpleAccent;

  @observable
  Color lastButtonColor = Colors.deepPurpleAccent;

  void changeColor() {
    buttonColorAnimation =
        ColorTween(begin: lastButtonColor, end: ColorMath.getRandomColor())
            .animate(controller);
    lastButtonColor = ColorMath.getRandomColor();
  }
}
