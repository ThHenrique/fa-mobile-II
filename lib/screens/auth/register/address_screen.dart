import 'package:flutter/material.dart';
import 'package:form_widget/shared/widgets/input.dart';
import 'package:form_widget/screens/auth/register/register_controller.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  AddressState createState() => AddressState();
}

class AddressState extends State<AddressScreen> {
  final _controller = RegisterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Form(
          key: _controller.formKey,
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
                validator: _controller.validator.validateText,
                onSaved: (String value) => _controller.endereco = value,
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
                validator: _controller.validator.validateText,
                onSaved: (String value) => _controller.numero = value,
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
                validator: _controller.validator.validateText,
                onSaved: (String value) => _controller.complemento = value,
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
                validator: _controller.validator.validateText,
                onSaved: (String value) => _controller.uf = value,
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
                validator: _controller.validator.validateText,
                onSaved: (String value) => _controller.cep = value,
              ),
              const SizedBox(height: 48.0),
              Center(
                child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () => _controller.isValidForm,
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
