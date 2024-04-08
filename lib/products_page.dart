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
      name: 'Product 3',
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
    Product(
      name: 'Product 5',
      price: 19.99,
      rating: 4.5,
      description: 'Description of Product 1',
      imageUrl: ['images/black_hoodie.webp'],
    ),
    Product(
      name: 'Product 6',
      price: 29.99,
      rating: 3.8,
      description: 'Description of Product 2',
      imageUrl: ['images/black_hoodie.webp'],
    ),
    Product(
      name: 'Product 7',
      price: 19.99,
      rating: 4.5,
      description: 'Description of Product 1',
      imageUrl: ['images/black_hoodie.webp'],
    ),
    Product(
      name: 'Product 8',
      price: 29.99,
      rating: 3.8,
      description: 'Description of Product 2',
      imageUrl: ['images/black_hoodie.webp'],
    ),
    Product(
      name: 'Product 9',
      price: 19.99,
      rating: 4.5,
      description: 'Description of Product 1',
      imageUrl: ['images/black_hoodie.webp'],
    ),
    Product(
      name: 'Product 10',
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
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFA6E20),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Get your special sale up to 50%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                )),
                            ElevatedButton(
                                onPressed: () {}, child: const Text("Shop Now"))
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.height * 0.2,
                                  height:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child:
                                      Image.asset("images/black_hoodie.webp")),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.60,
                width: MediaQuery.of(context).size.width,
                child:Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: CustomScrollView(
                    slivers: <Widget>[
                      SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        sliver: SliverGrid.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: List.generate(
                            products.length,
                                (index) => GridTile(
                              child: Card(
                                color: const Color(0xFFFFFBFF),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 90,
                          
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
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(
                                            '\$${products[index].price.toString()}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              )
            ],
          ),
        ));
  }
}
