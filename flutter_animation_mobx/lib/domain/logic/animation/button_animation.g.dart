// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_animation.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ButtonAnimation on _ButtonAnimation, Store {
  late final _$buttonScaleAtom =
      Atom(name: '_ButtonAnimation.buttonScale', context: context);

  @override
  double get buttonScale {
    _$buttonScaleAtom.reportRead();
    return super.buttonScale;
  }

  @override
  set buttonScale(double value) {
    _$buttonScaleAtom.reportWrite(value, super.buttonScale, () {
      super.buttonScale = value;
    });
  }

  @override
  String toString() {
    return '''
buttonScale: ${buttonScale}
    ''';
  }
}
