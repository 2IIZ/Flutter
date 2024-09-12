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

  late final _$buttonColorAtom =
      Atom(name: '_ButtonAnimation.buttonColor', context: context);

  @override
  Color? get buttonColor {
    _$buttonColorAtom.reportRead();
    return super.buttonColor;
  }

  @override
  set buttonColor(Color? value) {
    _$buttonColorAtom.reportWrite(value, super.buttonColor, () {
      super.buttonColor = value;
    });
  }

  late final _$lastButtonColorAtom =
      Atom(name: '_ButtonAnimation.lastButtonColor', context: context);

  @override
  Color get lastButtonColor {
    _$lastButtonColorAtom.reportRead();
    return super.lastButtonColor;
  }

  @override
  set lastButtonColor(Color value) {
    _$lastButtonColorAtom.reportWrite(value, super.lastButtonColor, () {
      super.lastButtonColor = value;
    });
  }

  @override
  String toString() {
    return '''
buttonScale: ${buttonScale},
buttonColor: ${buttonColor},
lastButtonColor: ${lastButtonColor}
    ''';
  }
}
