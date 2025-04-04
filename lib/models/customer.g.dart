// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Customer on _CustomerBase, Store {
  late final _$nameAtom = Atom(name: '_CustomerBase.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  bool _nameIsInitialized = false;

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, _nameIsInitialized ? super.name : null, () {
      super.name = value;
      _nameIsInitialized = true;
    });
  }

  late final _$emailAtom = Atom(name: '_CustomerBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  bool _emailIsInitialized = false;

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, _emailIsInitialized ? super.email : null,
        () {
      super.email = value;
      _emailIsInitialized = true;
    });
  }

  late final _$cpfAtom = Atom(name: '_CustomerBase.cpf', context: context);

  @override
  String? get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  bool _cpfIsInitialized = false;

  @override
  set cpf(String? value) {
    _$cpfAtom.reportWrite(value, _cpfIsInitialized ? super.cpf : null, () {
      super.cpf = value;
      _cpfIsInitialized = true;
    });
  }

  late final _$_CustomerBaseActionController =
      ActionController(name: '_CustomerBase', context: context);

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$_CustomerBaseActionController.startAction(
        name: '_CustomerBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_CustomerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_CustomerBaseActionController.startAction(
        name: '_CustomerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_CustomerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCpf(String value) {
    final _$actionInfo = _$_CustomerBaseActionController.startAction(
        name: '_CustomerBase.changeCpf');
    try {
      return super.changeCpf(value);
    } finally {
      _$_CustomerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
cpf: ${cpf}
    ''';
  }
}
