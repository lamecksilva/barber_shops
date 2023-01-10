import 'package:barber_shops/modules/home/controller/home_controller.dart';
import 'package:barber_shops/modules/home/models/category_product.dart';
import 'package:barber_shops/services/widgets/c_category_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List categoryProducts = [
  CategoryProduct(
    sId: "abc1",
    active: true,
    name: "Corte de Cabelo",
    pictureThumb:
        "https://images.unsplash.com/photo-1517832606299-7ae9b720a186",
  ),
  CategoryProduct(
    sId: "abc12",
    active: true,
    name: "Corte de Barba",
    pictureThumb:
        "https://images.unsplash.com/photo-1532710093739-9470acff878f",
  ),
  CategoryProduct(
      sId: "abc123",
      active: true,
      name: "Tingimento de Cabelo",
      pictureThumb:
          "https://images.unsplash.com/photo-1634480789085-33416565117d"),
  CategoryProduct(
      sId: "abc1234",
      active: true,
      name: "Massagem Facial",
      pictureThumb:
          "https://plus.unsplash.com/premium_photo-1669675935219-65c626a3e260"),
];

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Row(
          children: [
            Image.asset(
              'assets/images/barbeiro.png',
              scale: 15 / 1,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('Barbers Shop'),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              print('Notifications');
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting, $name + Search icon
            Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Olá, Lameck',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print('Search');
                  },
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ],
            ),

            // Categories
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 6.0),
              child: Text(
                'Categorias',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
            ),

            Container(
              height: 130,
              margin: const EdgeInsets.only(left: 12.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: categoryProducts
                    .map((i) => CCategoryProducts(categoryProduct: i))
                    .toList(),
              ),
            ),

            // Barber Shops List

            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                bottom: 6.0,
              ),
              child: Text(
                'Estabelecimentos',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height - 500,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    height: 100,
                    color: Colors.black54,
                    margin: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      bottom: 8.0,
                    ),
                  ),
                  Container(
                    height: 100,
                    color: Colors.black54,
                    margin: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      bottom: 8.0,
                    ),
                  ),
                  Container(
                    height: 100,
                    color: Colors.black54,
                    margin: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      bottom: 8.0,
                    ),
                  ),
                  Container(
                    height: 100,
                    color: Colors.black54,
                    margin: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      bottom: 8.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
