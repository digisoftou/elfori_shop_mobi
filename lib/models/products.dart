class Product {
  final String imageAsset;
  final String title;
  final String subtitle;
  final double price;
  final double discountedPrice;

  Product({
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.discountedPrice,
  });
}

final List<Product> products = [

  Product(
    imageAsset: 'assets/images/product3.png',
    title: 'КРЕМ МИТТЄВЕ ВІДНОВЛЕННЯ',
    subtitle: '0115 / 50 мл',
    price: 1760.0,
    discountedPrice: 980.0,
  ),
  Product(
    imageAsset: 'assets/images/product4.png',
    title: 'КРЕМ З АРГАНОВОЮ ОЛІЄЮ "СЕКРЕТИ САХАР"',
    subtitle: '0115 / 50 мл',
    price: 1134.0,
    discountedPrice: 610.0,
  ),
  Product(
    imageAsset: 'assets/images/product2.png',
    title: 'КРЕМ ДЛЯ ОБЛИЧЧЯ BOLDCARE',
    subtitle: '0115 / 50 мл',
    price: 560.0,
    discountedPrice: 510.0,
  ),
  Product(
    imageAsset: 'assets/images/product3.png',
    title: 'КРЕМ МИТТЄВЕ ВІДНОВЛЕННЯ',
    subtitle: '0115 / 50 мл',
    price: 1760.0,
    discountedPrice: 980.0,
  ),
  Product(
    imageAsset: 'assets/images/product1.png',
    title: 'КРЕМ З АРГАНОВОЮ ОЛІЄЮ "СЕКРЕТИ САХАР"',
    subtitle: '0115 / 50 мл',
    price: 1134.0,
    discountedPrice: 610.0,
  ),
  Product(
    imageAsset: 'assets/images/product2.png',
    title: 'КРЕМ ДЛЯ ОБЛИЧЧЯ BOLDCARE',
    subtitle: '0115 / 50 мл',
    price: 560.0,
    discountedPrice: 510.0,
  ),
  // Add more products as needed
];