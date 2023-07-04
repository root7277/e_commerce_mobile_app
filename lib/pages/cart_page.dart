// import 'package:e_commerce_mobile_app/DataBase/data.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_mobile_app/widgets/cart_page_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){Navigator.pop(context, 'product_details');}, icon: const Icon(Icons.arrow_back, color: Colors.black,)),
                const Text('Cart', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.black,)),
              ],
            ),
            const SizedBox(height: 10),
            const Expanded(child: CartPageWidget()),
          ],
        ),
      ),
    );
  }
}