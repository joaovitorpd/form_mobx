import 'package:counter_mobx/body_widget.dart';
import 'package:counter_mobx/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<Controller>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Observer(builder: (_) {
          return Text(controller.isValid
              ? "Formulário Validado"
              : "Formulário Não Validado");
        }),
      ),
      body: const BodyWidget(),
    );
  }
}
