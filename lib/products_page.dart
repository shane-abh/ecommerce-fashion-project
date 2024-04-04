import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final double rating;
  final String description;
  final List<String> imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
    required this.imageUrl,
  });
}

class ProductsPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Product 1',
      price: 19.99,
      rating: 4.5,
      description: 'Description of Product 1',
      imageUrl: ['images/black_hoodie.webp'],
    ),
    Product(
      name: 'Product 2',
      price: 29.99,
      rating: 3.8,
      description: 'Description of Product 2',
      imageUrl: ['images/black_hoodie.webp'],
    ),
    Product(
      name: 'Product 1',
      price: 19.99,
      rating: 4.5,
      description: 'Description of Product 1',
      imageUrl: ['images/black_hoodie.webp'],
    ),
    Product(
      name: 'Product 4',
      price: 29.99,
      rating: 3.8,
      description: 'Description of Product 2',
      imageUrl: ['images/black_hoodie.webp'],
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns in the grid
              crossAxisSpacing: 5, // Spacing between columns
              mainAxisSpacing: 20, // Spacing between rows
            ),
            shrinkWrap: true, // Important to prevent RenderFlex overflow
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          products[index].imageUrl[0],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index].name,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            '\$${products[index].price.toString()}',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}