// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
part 'client.g.dart';

class Client = _ClientBase with _$Client;

abstract class _ClientBase with Store {
  @observable
  late String? name = '';
  @action
  changeName(String value) => name = value;

  @observable
  late String? email = '';
  @action
  changeEmail(String value) => email = value;

  @observable
  late String? cpf = '';
  @action
  changeCpf(String value) => cpf = value;
}
