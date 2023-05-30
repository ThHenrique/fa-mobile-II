class Product {
  final String name;
  final double price;
  final String image;

  Product({required this.name, required this.image, required this.price});

  static getProducts() {
    List<Product> products = [
      Product(
        name: 'Lâmpada Led Bulbo E-27 7W Bivolt',
        image: 'assets/images/lampada.png',
        price: 5.11,
      ),
      Product(
        name: 'Cabo Flexível 1,50mm 750V Rolo Com 100 Metros',
        image: 'assets/images/cabo.png',
        price: 105.00,
      ),
      Product(
        name: 'Projetor Led 10W 3000K Luz Amarela ',
        image: 'assets/images/projetor_led.webp',
        price: 70.73,
      ),
      Product(
        name: 'Multimetro Digital Hm1100 Hikari',
        image: 'assets/images/multimetro.webp',
        price: 87.88,
      )
    ];
    return products;
  }
}
