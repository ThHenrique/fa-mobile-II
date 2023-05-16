import 'package:flutter/material.dart';
import 'package:form_widget/shared/widgets/checkbox.dart';

class SecondActivityGetForm extends StatelessWidget {
  final String nome, endereco, complemento, numero, uf, cep;

  const SecondActivityGetForm({
    Key? key,
    required this.nome,
    required this.endereco,
    required this.complemento,
    required this.numero,
    required this.uf,
    required this.cep,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // barra do aplicativo
        title: const Text('Cadastro'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 16.0),
          const Text(
            'Seus dados:',
            style: TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Nome: $nome',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Endereco: $endereco',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Complemente: $complemento',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Número: $numero',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'UF: $uf',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'CEP: $cep',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Os dados acima serão armazenados e podem ser compartilhados internamente conforme a política da empresa',
            style: TextStyle(fontSize: 24.0),
          ),
          LabelCheckbox(
            label: "Aceito compartilhar",
            padding: const EdgeInsets.all(20),
            value: true,
            onChanged: (bool newValue) {
              // setState(() {
              //   _isSelected = newValue;
              // });
            },
          ),
        ]),
      ),
    );
  }
}
