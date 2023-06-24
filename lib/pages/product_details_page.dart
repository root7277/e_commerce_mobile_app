import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){Navigator.pop(context, 'home_page');}, icon: const Icon(Icons.arrow_back)),
                  const Text('Product Details', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),   
                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
              ],
            ),
          ],
        ),
      ),
    );
  }
}