import 'package:mobx/mobx.dart';
part 'controller.g.dart'; //allways the name_of_this_file.g

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String name = '';

  @observable
  String lastName = '';

  @computed
  String get fullName => '$name $lastName';

  @action
  updateName(String newName) {
    name = newName;
  }

  @action
  updateLastName(String newLastName) {
    lastName = newLastName;
  }
}
