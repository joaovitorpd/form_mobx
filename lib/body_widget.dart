import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import 'controller.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  _textField(
      {String? labelText, dynamic onChanged, String? Function()? errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<Controller>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Observer(builder: (_) {
            return _textField(
              errorText: controller.validateName,
              labelText: 'Nome',
              onChanged: controller.customer.changeName,
            );
          }),
          const SizedBox(height: 20),
          Observer(builder: (_) {
            return _textField(
              errorText: controller.validateEmail,
              labelText: 'email',
              onChanged: controller.customer.changeEmail,
            );
          }),
          const SizedBox(height: 20),
          Observer(builder: (_) {
            return _textField(
              errorText: controller.validateCpf,
              labelText: 'CPF',
              onChanged: controller.customer.changeCpf,
            );
          }),
          const SizedBox(height: 20),
          Observer(builder: (_) {
            return ElevatedButton(
              onPressed: controller.isValid ? () {} : null,
              child: const Text('Salvar'),
            );
          })
        ],
      ),
    );
  }
}
