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
      name: 'Loose Fit Hoodie',
      price: 29.99,
      rating: 4.5,
      description:
          'Loose-fit sweatshirt hoodie in medium weight cotton-blend fabric with a generous, but not oversized silhouette. Jersey-lined, drawstring hood, dropped shoulders, long sleeves, and a kangaroo pocket. Wide ribbing at cuffs and hem. Soft, brushed inside.',
      imageUrl: ['images/black_hoodie.webp'],
    ),
    Product(
      name: 'Loose Fit Sweatshirt',
      price: 14.99,
      rating: 3.8,
      description:
          'Loose-fit sweatshirt in lightweight, cotton-blend fabric with a generous, but not oversized silhouette. Round, ribbed neck, dropped shoulders, and long sleeves. Wide ribbing at cuffs and hem. Soft, brushed inside.',
      imageUrl: ['images/loose_fit_sweatshirt_1.jpeg','images/loose_fit_sweatshirt_2.jpeg', 'images/loose_fit_sweatshirt_3.jpeg'],
    ),
    Product(
      name: 'Regular Fit Twill Shirt',
      price: 37.99,
      rating: 4.5,
      description:
          'Regular-fit shirt in soft cotton twill with a comfortable, classic silhouette. Turn-down collar, classic button placket, an open chest pocket, and yoke at back. Long sleeves, sleeve placket with link button, and button at cuffs. Rounded hem.',
      imageUrl: ['images/regular_fit_twill_shirt_1.jpeg','images/regular_fit_twill_shirt_2.jpeg','images/regular_fit_twill_shirt_3.jpeg'],
    ),
    Product(
      name: 'Relaxed Fit Flannel Shirt',
      price: 37.99,
      rating: 3.8,
      description: 'Relaxed-fit shirt in soft cotton flannel. Turn-down collar, buttons at front, and yoke at back. Open chest pocket, long sleeves, sleeve placket with link button, and button at cuffs. Gently rounded hem.',
      imageUrl: ['images/relaxed_fit_flannel_shirt_1.jpeg','images/relaxed_fit_flannel_shirt_2.jpeg','images/relaxed_fit_flannel_shirt_3.webp'],
    ),
    Product(
      name: 'Loose Fit Lyocell Resort Shirt',
      price: 31.99,
      rating: 4.5,
      description: 'Loose-fit shirt in woven lyocell with a generous but not oversized silhouette. Resort collar, buttons without placket, and short sleeves. Open chest pocket, yoke at back, and a straight-cut hem with a small slit at sides. Fabric made from lyocell is super soft, wrinkle resistant, and nicely draped.',
      imageUrl: ['images/loose_fit_lyocell_resort_shirt_1.jpeg', 'images/loose_fit_lyocell_resort_shirt_2.jpeg', 'images/loose_fit_lyocell_resort_shirt_3.jpeg'],
    ),
    Product(
      name: 'Loose Jeans',
      price: 64.99,
      rating: 3.8,
      description: '5-pocket jeans in non-stretch cotton denim. Rounded legs and loose fit from seat to hem for extra room around legs. Regular waist, zip fly, and dropped gusset. Perfect for the full denim look.',
      imageUrl: ['images/loose_jeans_1.jpeg', 'images/loose_jeans_2.jpeg','images/loose_jeans_3.jpeg'],
    ),
    Product(
      name: 'Slim Jeans',
      price: 35.99,
      rating: 4.5,
      description: 'Straight-leg, 5-pocket jeans in cotton denim with gentle stretch for added comfort. Slim fit from waist through thighs. Regular waist and zip fly. Easily styled for a sleek or sporty look.',
      imageUrl: ['images/slim_jeans_1.jpeg','images/slim_jeans_2.jpeg','images/slim_jeans_3.jpeg'],
    ),
    Product(
      name: 'Slim Fit Fine-knit Cotton Sweater',
      price: 37.99,
      rating: 3.8,
      description: 'Slim-fit sweater in soft, fine-knit cotton. Crew neck, long sleeves, and ribbing at neck, cuffs, and hem.',
      imageUrl: ['images/slim_fit_fine_knit_cotton_sweater_1.jpeg','images/slim_fit_fine_knit_cotton_sweater_2.jpeg','images/slim_fit_fine_knit_cotton_sweater_3.jpeg'],
    ),
    Product(
      name: 'Slim Fit Half-zip Sweater',
      price: 54.99,
      rating: 4.5,
      description: 'Slim-fit, knit sweater in a soft cotton blend with a fitted silhouette. Stand-up collar, half-zip, long sleeves, and a straight hem',
      imageUrl: ['images/slim_fit_half_zip_sweater_1.jpeg','images/slim_fit_half_zip_sweater_2.jpeg','images/slim_fit_half_zip_sweater_3.jpeg'],
    ),
    Product(
      name: 'Oversized Fit Sweater',
      price: 58.99,
      rating: 3.8,
      description: 'Oversized sweater in a soft knit with alpaca wool content. Crew neck, dropped shoulders, and long sleeves. Wide ribbing at neck, cuffs, and hem.',
      imageUrl: ['images/oversized_fit_sweater_1.jpeg','images/oversized_fit_sweater_2.jpeg','images/oversized_fit_sweater_3.jpeg'],
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
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Shop Now",
                                  style: TextStyle(
                                      color: Color(0xFFFA6E20),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 2,
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
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: CustomScrollView(
                    slivers: <Widget>[
                      SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        sliver: SliverGrid.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 30,
                          children: List.generate(
                            products.length,
                            (index) => GridTile(

                              child: Card(

                                elevation: 1,
                                color: const Color(0xFFFFFBFF),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                       
                                        child: Image.asset(
                                          products[index].imageUrl[0],
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            products[index].name,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            '\$${products[index].price.toString()}',
                                            style: const TextStyle(
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
