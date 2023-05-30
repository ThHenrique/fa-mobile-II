import 'package:flutter/material.dart';

class EvaluationScreen extends StatefulWidget {
  const EvaluationScreen({super.key});

  @override
  EvaluationState createState() => EvaluationState();
}

class EvaluationState extends State<EvaluationScreen> {
  List<String> list = ['Design não está intuitivo', 'Muito pesado', 'As cores', 'Tudo'];
  List<String> features = ['Lista de desejo', 'Meu perfil', 'Mais de um produto no carrinho', 'Parcelar compra'];
  List<String> selectedList = [];
  List<String> selectedFeatures = [];

  void updateList(String option, bool selected) {
    setState(() {
      if (selected) {
        selectedList.add(option);
      } else {
        selectedList.remove(option);
      }
    });
  }

  void updateFeatures(String option, bool selected) {
    setState(() {
      if (selected) {
        selectedFeatures.add(option);
      } else {
        selectedFeatures.remove(option);
      }
    });
  }

  void mostrarSelecoes() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Opções Selecionadas'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Coisas ruins: ${selectedList.join(", ")}'),
              Text('Melhorias: ${selectedFeatures.join(", ")}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Fechar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Avaliar',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(
                  thickness: 1,
                  endIndent: 0,
                  color: Colors.black12,
                ),
                const Text(
                  'O que está ruim no aplicativo?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Column(
                  children: list.map((option) {
                    return CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        option,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      value: selectedList.contains(option),
                      onChanged: (bool? selected) {
                        updateList(option, selected!);
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Quais melhorias devemos adicionar no app?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Column(
                  children: features.map((option) {
                    return CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        option,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      value: selectedFeatures.contains(option),
                      onChanged: (bool? selected) {
                        updateFeatures(option, selected!);
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: mostrarSelecoes,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                    child: const Text(
                      'ENVIAR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
