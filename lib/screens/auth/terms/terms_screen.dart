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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Seus Dados compartilhados',
            style: TextStyle(
              fontSize: 22,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            height: 32,
            thickness: 1,
            endIndent: 0,
            color: Colors.black12,
          ),
          const SizedBox(height: 24.0),
          Text(
            'Nome completo: ${widget.username}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'E-mail: ${widget.email}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Endereco: ${widget.street}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Complemento: ${widget.complement}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Número: ${widget.houseNumber}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'UF: ${widget.uf}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'CEP: ${widget.zipCode}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 50.0),
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
                  child: Text(
                    'Os dados acima serão armazenados e podem ser compartilhados internamente conforme a política da empresa',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
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
