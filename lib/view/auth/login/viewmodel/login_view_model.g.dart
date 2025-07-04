// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginViewModel on _LoginViewModelBase, Store {
  late final _$isLoadingAtom = Atom(
    name: '_LoginViewModelBase.isLoading',
    context: context,
  );

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorMessageAtom = Atom(
    name: '_LoginViewModelBase.errorMessage',
    context: context,
  );

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$loginAsyncAction = AsyncAction(
    '_LoginViewModelBase.login',
    context: context,
  );

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$navigateToHomeAsyncAction = AsyncAction(
    '_LoginViewModelBase.navigateToHome',
    context: context,
  );

  @override
  Future<void> navigateToHome() {
    return _$navigateToHomeAsyncAction.run(() => super.navigateToHome());
  }

  late final _$navigateToRegisterAsyncAction = AsyncAction(
    '_LoginViewModelBase.navigateToRegister',
    context: context,
  );

  @override
  Future<void> navigateToRegister() {
    return _$navigateToRegisterAsyncAction.run(
      () => super.navigateToRegister(),
    );
  }

  late final _$_LoginViewModelBaseActionController = ActionController(
    name: '_LoginViewModelBase',
    context: context,
  );

  @override
  void _setLoading(bool value) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
      name: '_LoginViewModelBase._setLoading',
    );
    try {
      return super._setLoading(value);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setError(String? error) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
      name: '_LoginViewModelBase._setError',
    );
    try {
      return super._setError(error);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage}
    ''';
  }
}
