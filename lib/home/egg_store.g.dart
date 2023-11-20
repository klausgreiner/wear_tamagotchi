// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egg_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EggStore on EggStoreBase, Store {
  late final _$shakeAtom = Atom(name: 'EggStoreBase.shake', context: context);

  @override
  bool get shake {
    _$shakeAtom.reportRead();
    return super.shake;
  }

  @override
  set shake(bool value) {
    _$shakeAtom.reportWrite(value, super.shake, () {
      super.shake = value;
    });
  }

  late final _$EggStoreBaseActionController =
      ActionController(name: 'EggStoreBase', context: context);

  @override
  dynamic tapEgg() {
    final _$actionInfo =
        _$EggStoreBaseActionController.startAction(name: 'EggStoreBase.tapEgg');
    try {
      return super.tapEgg();
    } finally {
      _$EggStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
shake: ${shake}
    ''';
  }
}
