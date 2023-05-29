import 'package:flutter/material.dart';

// Classe que instância classe responsável por gerenciar estados
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeState createState() => HomeState();
}

// classe que contém os widgets
class HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
