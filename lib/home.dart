import 'package:counter_mobx/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final controller = Controller();

  _textField({String? labelText, onChanged, String? Function()? errorText}) {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Formulário MobX"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Observer(builder: (_) {
              return _textField(
                errorText: controller.validateName,
                labelText: 'name',
                onChanged: controller.client.changeName,
              );
            }),
            const SizedBox(height: 20),
            Observer(builder: (_) {
              return _textField(
                errorText: controller.validateEmail,
                labelText: 'email',
                onChanged: controller.client.changeEmail,
              );
            }),
            const SizedBox(height: 50),
            Observer(builder: (_) {
              return ElevatedButton(
                onPressed: controller.isValid ? () {} : null,
                child: const Text('Salvar'),
              );
            })
          ],
        ),
      ),
    );
  }
}
