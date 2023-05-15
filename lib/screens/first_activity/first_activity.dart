import 'package:flutter/material.dart';
import 'package:form_widget/shared/widgets/input.dart';

import 'first_activity_controller.dart';

// Classe que instância classe responsável por gerenciar estados
class FisrtActivityForms extends StatefulWidget {
  const FisrtActivityForms({super.key});

  @override
  FormsState createState() => FormsState();
}

// classe que contém os widgets
class FormsState extends State<FisrtActivityForms> {
  final _controller = FormsStateController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // barra do aplicativo
        title: const Text('Cadastro'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        // corpo do aplicativo
        child: Align(
          child: Form(
            key: _controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Input(
                  label: 'Nome',
                  icon: const Icon(Icons.account_circle_outlined),
                  validator: _controller.validator.validateText,
                  onSaved: (String value) => _controller.nome = value,
                ),
                const SizedBox(height: 12.0),
                Input(
                  label: 'Endereço',
                  icon: const Icon(Icons.house_outlined),
                  validator: _controller.validator.validateText,
                  onSaved: (String value) => _controller.endereco = value,
                ),
                const SizedBox(height: 12.0),
                Input(
                  label: 'Número',
                  icon: const Icon(Icons.numbers_outlined),
                  validator: _controller.validator.validateText,
                  onSaved: (String value) => _controller.numero = value,
                ),
                const SizedBox(height: 12.0),
                Input(
                  label: 'Complemento',
                  icon: const Icon(Icons.control_point_outlined),
                  validator: _controller.validator.validateText,
                  onSaved: (String value) => _controller.complemento = value,
                ),
                const SizedBox(height: 12.0),
                Input(
                  label: 'Complemento',
                  icon: const Icon(Icons.numbers_outlined),
                  validator: _controller.validator.validateText,
                  onSaved: (String value) => _controller.complemento = value,
                ),
                const SizedBox(height: 12.0),
                Input(
                  label: 'UF',
                  icon: const Icon(Icons.emoji_flags_outlined),
                  validator: _controller.validator.validateText,
                  onSaved: (String value) => _controller.uf = value,
                ),
                const SizedBox(height: 12.0),
                Input(
                  label: 'CEP',
                  icon: const Icon(Icons.other_houses_outlined),
                  validator: _controller.validator.validateText,
                  onSaved: (String value) => _controller.cep = value,
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => _controller.isValidForm(context), // executa _enviar
                        child: const Text('Cadastrar'),
                      ),
                      ElevatedButton(
                        onPressed: _controller.cancelar, // executa _cancelar
                        child: const Text('Cancelar'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
