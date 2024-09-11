import 'package:mobx/mobx.dart';

// include the "part" directive.
// Without this, the build_runner will not produce any output.
part 'button_animation.g.dart';

class ButtonAnimation = _ButtonAnimation with _$ButtonAnimation;

abstract class _ButtonAnimation with Store {
  @observable
  double buttonScale = 1.0;
}
