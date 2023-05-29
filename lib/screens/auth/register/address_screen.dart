import 'package:flutter/material.dart';
import 'package:form_widget/screens/auth/terms/terms_screen.dart';
import 'package:form_widget/shared/utils/validade_input.dart';
import 'package:form_widget/shared/widgets/input.dart';

class AddressScreen extends StatefulWidget {
  final String username, email;

  const AddressScreen({Key? key, required this.username, required this.email}) : super(key: key);

  @override
  AddressState createState() => AddressState();
}

class AddressState extends State<AddressScreen> {
  final _formKey = GlobalKey<FormState>();

  final validator = InputValidator();

  var street = '', houseNumber = '', complement = '', uf = '', zipCode = '';

  bool isValidForm() {
    if (!_formKey.currentState!.validate()) return false;
    _formKey.currentState?.save();
    return true;
  }

  void goToNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return TermsSreen(
          username: widget.username,
          email: widget.email,
          street: street,
          houseNumber: houseNumber,
          complement: complement,
          uf: uf,
          zipCode: zipCode,
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
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Endereço',
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
                'Rua',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8.0),
              Input(
                label: 'Rua',
                icon: const Icon(Icons.house_outlined),
                validator: validator.validateText,
                onSaved: (String value) => street = value,
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Número',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8.0),
              Input(
                label: 'Número',
                icon: const Icon(Icons.numbers_outlined),
                validator: validator.validateText,
                onSaved: (String value) => houseNumber = value,
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Complemento',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8.0),
              Input(
                label: 'Complemento',
                icon: const Icon(Icons.numbers_outlined),
                validator: validator.validateText,
                onSaved: (String value) => complement = value,
              ),
              const SizedBox(height: 16.0),
              const Text(
                'UF',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8.0),
              Input(
                label: 'UF',
                icon: const Icon(Icons.emoji_flags_outlined),
                validator: validator.validateText,
                onSaved: (String value) => uf = value,
              ),
              const SizedBox(height: 16.0),
              const Text(
                'CEP',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8.0),
              Input(
                label: 'CEP',
                icon: const Icon(Icons.other_houses_outlined),
                validator: validator.validateText,
                onSaved: (String value) => zipCode = value,
              ),
              const SizedBox(height: 48.0),
              Center(
                child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () => _nextSreen(),
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
