import 'package:counter_mobx/models/customer.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart'; //allways the name_of_this_file.g

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  final customer = Customer();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  String? validateName() {
    if (customer.name == null || customer.name!.isEmpty) {
      return "este campo é obrigatório";
    } else if (customer.name!.length < 3) {
      return "seu nome precisa ter mais de 3 caracteres";
    }
    return null;
  }

  String? validateEmail() {
    if (customer.email == null || customer.email!.isEmpty) {
      return "este campo é obrigatório";
    } else if (!customer.email!.contains('@')) {
      return "esse não é um email válido";
    }
    return null;
  }

  String? validateCpf() {
    if (customer.cpf == null || customer.cpf!.isEmpty) {
      return "este campo é obrigatório";
    } else if (!customer.cpf!.contains('.') && customer.cpf!.length < 13) {
      return "esse não é um CPF válido";
    }
    return null;
  }

  dispose() {
    //Here you can clean, discharge and/or stop whatever you need!
  }
}
