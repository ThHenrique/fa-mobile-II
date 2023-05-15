import 'package:flutter/material.dart';

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
        child: Column(children: [
          const SizedBox(height: 16.0),
          Text(
            'Seus dados: \n\nNome: $nome\nEndereco: $endereco\nComplemente: $complemento\nNúmero: $numero\nUF: $uf\nCEP: $cep',
            style: const TextStyle(fontSize: 24.0),
          ),
        ]),
      ),
    );
  }
}
