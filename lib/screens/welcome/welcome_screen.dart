import 'package:flutter/material.dart';
import 'package:form_widget/screens/auth/login/login_screen.dart';
import 'package:form_widget/screens/auth/register/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  void goToApp(BuildContext context, bool registerAccont) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return registerAccont ? const RegisterScreen() : const LoginScreen();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bem Vindo à",
              style: TextStyle(color: Colors.blueGrey, fontSize: 22, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 4.0),
            const Text(
              "ELETREX",
              style: TextStyle(color: Colors.blue, fontSize: 26, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "Materiais Elétricos",
              style: TextStyle(color: Colors.orangeAccent, fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16.0),
            const SizedBox(
              width: 240,
              child: Text(
                "Aqui você encontra os produtos certos para sua obra e com os menores preços.",
                style: TextStyle(color: Colors.blueGrey, fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Entre de graça",
              style: TextStyle(color: Colors.blueGrey, fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () => goToApp(context, false),
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Center(
                child: SizedBox(
                  child: TextButton(
                    onPressed: () => goToApp(context, true),
                    child: const Text(
                      'Criar uma nova conta',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
