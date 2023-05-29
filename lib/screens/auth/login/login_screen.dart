import 'package:flutter/material.dart';
import 'package:form_widget/shared/utils/validade_input.dart';
import 'package:form_widget/shared/widgets/input.dart';

// Classe que instância classe responsável por gerenciar estados
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginState createState() => LoginState();
}

// classe que contém os widgets
class LoginState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final validator = InputValidator();

  var username = '', password = '', formMessage = '';

  void signIn(BuildContext context) {
    setState(() {
      formMessage = "";
    });

    if (!formKey.currentState!.validate()) {
      return;
    }
    formKey.currentState!.save();

    if (username != "teste" || password != "123") {
      setState(() {
        formMessage = "Acesso não permitido";
      });
      return;
    }

    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (BuildContext context) {
    //     return const FormSreen();
    //   }),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Entrar',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 48.0),
                const Text(
                  'E-mail',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8.0),
                Input(
                  label: 'E-mail',
                  icon: const Icon(Icons.account_circle_outlined),
                  validator: validator.validateText,
                  onSaved: (String value) => username = value,
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Senha',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8.0),
                Input(
                  label: 'Senha',
                  icon: const Icon(Icons.vpn_key),
                  validator: validator.validateText,
                  onSaved: (String value) => password = value,
                ),
                const SizedBox(height: 8.0),
                formMessage.isNotEmpty
                    ? Text(
                        formMessage,
                        style: const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w500),
                      )
                    : Container(),
                const SizedBox(height: 16.0),
                Center(
                  child: SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () => signIn(context),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                      child: const Text(
                        'ENTRAR',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
