import 'package:flutter/material.dart';
import 'package:form_widget/screens/home/home_screen.dart';

class TermsSreen extends StatefulWidget {
  final String username, email, street, houseNumber, complement, uf, zipCode;

  const TermsSreen({
    Key? key,
    required this.username,
    required this.email,
    required this.street,
    required this.houseNumber,
    required this.complement,
    required this.uf,
    required this.zipCode,
  }) : super(key: key);

  @override
  TermsState createState() => TermsState();
}

class TermsState extends State<TermsSreen> {
  bool _aceptTerm = false;

  void goHome() {
    if (_aceptTerm) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return const HomeScreen();
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
            'Nome: ${widget.username}',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Email: ${widget.email}',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Endereco: ${widget.street}',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Complemento: ${widget.complement}',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Número: ${widget.houseNumber}',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'UF: ${widget.uf}',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 16.0),
          Text(
            'CEP: ${widget.zipCode}',
            style: const TextStyle(fontSize: 24.0),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: _aceptTerm,
                  onChanged: (newValue) {
                    setState(() {
                      _aceptTerm = !_aceptTerm;
                    });
                  },
                ),
                const Expanded(
                  child: Text('Os dados acima serão armazenados e podem ser compartilhados internamente conforme a política da empresa'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () => goHome(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: !_aceptTerm ? Colors.grey : Colors.blueAccent,
                ),
                child: const Text(
                  'FINALIZAR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
