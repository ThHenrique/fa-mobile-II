import 'package:flutter/material.dart';
import 'package:form_widget/screens/home/home_screen.dart';
import 'package:form_widget/shared/utils/validade_input.dart';

class RegisterController {
  final formKey = GlobalKey<FormState>();

  final validator = InputValidator();

  var nome = '', endereco = '', complemento = '', numero = '', uf = '', cep = '';

  bool isValidForm() {
    if (!formKey.currentState!.validate()) return false;
    formKey.currentState?.save();
    return true;
  }

  void registerAccount(BuildContext context) {
    if (isValidForm()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return const HomeScreen();
        }),
      );
    }
  }
}
