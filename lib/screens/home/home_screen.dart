import 'package:flutter/material.dart';
import 'package:form_widget/shared/models/product_model.dart';
import 'package:form_widget/shared/widgets/product_card_widget.dart';

// Classe que instância classe responsável por gerenciar estados
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeState createState() => HomeState();
}

// classe que contém os widgets
class HomeState extends State<HomeScreen> {
  final List<Product> products = Product.getProducts();

  void goReting() {
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Ajude a melhorar o aplicativo:',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: goReting,
                  child: const Text(
                    'Avaliar',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            const Text(
              'Produtos',
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
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: products.length,
              separatorBuilder: (_, int index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
              ),
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(product: product);
              },
            )
          ],
        ),
      ),
    );
  }
}
