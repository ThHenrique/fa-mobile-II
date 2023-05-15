import 'package:flutter/material.dart';
import 'package:form_widget/screens/second_activity/second_activity.dart';
import 'package:form_widget/shared/utils/validade_input.dart';

class FormsStateController {
  final formKey = GlobalKey<FormState>();

  final validator = InputValidator();

  var nome = '', endereco = '', complemento = '', numero = '', uf = '', cep = '';

  bool isValidForm(BuildContext context) {
    if (!formKey.currentState!.validate()) return false;
    formKey.currentState!.save();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return SecondActivityGetForm(
          nome: nome,
          endereco: endereco,
          complemento: complemento,
          numero: numero,
          uf: uf,
          cep: cep,
        );
      }),
    );

    return true;
  }

  // cancelar
  void cancelar() {
    formKey.currentState?.reset();
  }
}
