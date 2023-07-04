import 'package:flutter/material.dart';
import 'package:e_commerce_mobile_app/DataBase/data.dart';
import 'package:e_commerce_mobile_app/widgets/product_details_US.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int two = 0;
  String image_shoe = 'assets/shoe_1.png';
  String name_shoe = 'Men Shoe';
  String price_shoe = '\$ 89.32';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){Navigator.pop(context, 'home_page');}, icon: const Icon(Icons.arrow_back, color: Colors.black,)),
          title: const Text('Product Details', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black)), 
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.black,)),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                color: Color.fromARGB(255, 229, 235, 247),
              ),
              child: Image.asset(image_shoe, height: 60,),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index){
                    final item_image = data[index];
                    return InkWell(
                      onTap: () {
                        setState(() {
                          two = index;
                          image_shoe = item_image['image'];
                          name_shoe = item_image['name'];
                          price_shoe = item_image['price'];
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: two == index? Colors.green: const Color.fromARGB(255, 229, 235, 247),
                            width: 2,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          color: const Color.fromARGB(255, 229, 235, 247),
                        ),
                        child: Image.asset(item_image['image'], width: 80,),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Men\'s Road Running Shoe', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),),
                  SizedBox(
                    width: 50,
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text('4.5', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(name_shoe, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(price_shoe, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Select Size', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                  TextButton(onPressed: (){}, child: const Text('Size Chart', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 49, 129, 52)),),)
                ],
              ),
            ),
            const USWidget(),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Descriptions', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'cart_page');
                }, 
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(350, 50)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
                child: const Text('BUY NOW', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}