import 'package:counter_mobx/body.dart';
import 'package:counter_mobx/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

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
