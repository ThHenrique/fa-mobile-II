import 'package:flutter/material.dart';
import 'package:form_widget/screens/auth/register/address_screen.dart';
import 'package:form_widget/shared/utils/validade_input.dart';
import 'package:form_widget/shared/widgets/input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  FormsState createState() => FormsState();
}

class FormsState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();

  final validator = InputValidator();

  var username = '', email = '', password = '', confirmPassword = '';

  bool isValidForm() {
    if (!formKey.currentState!.validate()) return false;
    formKey.currentState?.save();
    return true;
  }

  void goToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return AddressScreen(
          email: email,
          username: username,
        );
      }),
    );
  }

  void _nextSreen() => isValidForm() ? goToNextScreen() : null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dados',
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
              const Text(
                'Nome completo',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8.0),
              Input(
                label: 'Nome',
                icon: const Icon(Icons.account_circle_outlined),
                validator: validator.validateText,
                onSaved: (String value) => username = value,
              ),
              const SizedBox(height: 16.0),
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
                icon: const Icon(Icons.email_outlined),
                validator: validator.validateText,
                onSaved: (String value) => email = value,
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
              const SizedBox(height: 16.0),
              const Text(
                'Confirmar senha',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8.0),
              Input(
                label: 'Confirmar senha',
                icon: const Icon(Icons.vpn_key),
                validator: validator.validateText,
                onSaved: (String value) => confirmPassword = value,
              ),
              const SizedBox(height: 48.0),
              Center(
                child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () => {_nextSreen()},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                    child: const Text(
                      'PRÓXIMO',
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
    );
  }
}
