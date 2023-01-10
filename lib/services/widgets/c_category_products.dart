import 'package:barber_shops/modules/home/models/category_product.dart';
import 'package:flutter/material.dart';

class CCategoryProducts extends StatelessWidget {
  const CCategoryProducts({super.key, required this.categoryProduct});

  final CategoryProduct categoryProduct;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // splashColor: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        print("On Tap");
      },
      child: Center(
        child: Container(
          width: 120,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      categoryProduct.pictureThumb ?? "",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                  color: Colors.red,
                ),
                margin: const EdgeInsets.only(
                  bottom: 10.0,
                ),
              ),
              Center(
                child: Text(
                  categoryProduct.name ?? "",
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
