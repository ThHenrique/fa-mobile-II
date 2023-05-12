import 'package:flutter/material.dart';
import 'package:form_widget/shared/utils/validade_input.dart';

class FormsStateController {
  final formKey = GlobalKey<FormState>();

  // é necessário um controller para interagir com
  // wigdget de entrada de dados
  // final TextEditingController nome = TextEditingController();
  // final TextEditingController endereco = TextEditingController();
  // final TextEditingController numero = TextEditingController();
  // final TextEditingController complemento = TextEditingController();
  // final TextEditingController uf = TextEditingController();
  // final TextEditingController cep = TextEditingController();

  final validator = InputValidator();

  var nome = '', endereco = '', complemento = '', numero = '', uf = '', cep = '';

  // simula envia de informação
  void enviar() {
    // final List<TextEditingController> formInputs = [_nome, _endereco, _complemento, _numero, _uf, _cep];

    final List<String> formFieldsInputs = ["nome", "endereco", "complemento", "numero", "UF", "cep"];

    // altera state textColor
    void changeTextColor(Color newColor) {
      // setState(() {
      //   textColor = newColor;
      // });
    }

    // altera cor da borda
    void changeBorderColor(Color newColor) {
      // setState(() {
      //   borderColor = newColor;
      // });
    }

    void changeEnvio(bool e) {
      // setState(() {
      //   envio = e;
      // });
    }

    // define resposta
    // setState(() {
    //   // não informou nome
    //   for (var element in formInputs) {
    //     if (element.text == "") {
    //       // altera cor do texto
    //       changeTextColor(Colors.red);
    //       // altera mensagem
    //       _result = "$_result \n Campo ${formFieldsInputs[formInputs.indexOf(element)]} obrigatório";
    //       // alterar cor da borda
    //       changeBorderColor(Colors.red);
    //     } else {
    //       // ok, alterar dados para
    //       changeEnvio(true);
    //       changeTextColor(Colors.blue);
    //       changeBorderColor(Colors.grey);
    //       _result = "$_result\n${element.text}";
    //     }
    //   }
    // });
  }

  bool isValidForm() {
    if (!formKey.currentState!.validate()) return false;
    formKey.currentState?.save();
    return true;
  }

  // cancelar
  void cancelar() {
    // _nome.text = "";
    // String nome = _nome.text;
    // // define resposta
    // setState(() {
    //   _result = nome;
    // });
  }
}
