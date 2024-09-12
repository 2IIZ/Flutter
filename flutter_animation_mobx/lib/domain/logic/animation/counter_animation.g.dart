// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_animation.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CounterAnimation on _CounterAnimation, Store {
  late final _$counterScaleAtom =
      Atom(name: '_CounterAnimation.counterScale', context: context);

  @override
  double get counterScale {
    _$counterScaleAtom.reportRead();
    return super.counterScale;
  }

  @override
  set counterScale(double value) {
    _$counterScaleAtom.reportWrite(value, super.counterScale, () {
      super.counterScale = value;
    });
  }

  @override
  String toString() {
    return '''
counterScale: ${counterScale}
    ''';
  }
}
