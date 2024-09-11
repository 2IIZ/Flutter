import 'package:mobx/mobx.dart';

// include the "part" directive.
// Without this, the build_runner will not produce any output.
part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int value = 0;

  @action
  void increment(){
    value++;
  }
}