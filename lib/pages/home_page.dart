import 'package:flutter/material.dart';
import 'package:e_commerce_mobile_app/widgets/new_arrilal_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
            children: [
              Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.sort)),
                    const Text('Insightlancer', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.grey),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 234, 231, 231),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: 'What are you looking for?',
                        hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    boxShadow: [BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 10,
                      color: Color.fromARGB(255, 177, 175, 175),
                    )],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Column(
                          children: [
                            const Text(' New Collection', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),),
                            const SizedBox(height: 10),
                            const Text('Discount 50 % for ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white),),
                            const SizedBox(height: 10),
                            const Text(' the first transaction', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white),),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: (){}, 
                              style: const ButtonStyle(
                                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50)))),
                                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 30, 100, 30)),
                              ),
                              child: const Text('Shop Now', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),),
                            )
                          ],
                        ),
                      ),
                      Image.asset('assets/shoe_3.png', height: 100,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Brand', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                      TextButton(onPressed: (){}, child: const Text('See all', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 49, 129, 52)),),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CircleAvatar(child: Image.asset('assets/logo/nice.png', height: 30, fit: BoxFit.fill,), radius: 50, backgroundColor: const Color.fromARGB(255, 235, 230, 230)),
                      CircleAvatar(child: Image.asset('assets/logo/adidas.png', height: 30, fit: BoxFit.fill,), radius: 50, backgroundColor: const Color.fromARGB(255, 235, 230, 230),),
                      CircleAvatar(child: Image.asset('assets/logo/puma.png', height: 30, fit: BoxFit.fill,), radius: 50, backgroundColor: const Color.fromARGB(255, 235, 230, 230),),
                      CircleAvatar(child: Image.asset('assets/logo/reebok.png', height: 30, fit: BoxFit.fill,), radius: 50, backgroundColor: const Color.fromARGB(255, 235, 230, 230),),
                      CircleAvatar(child: Image.asset('assets/logo/jordon.png', height: 30, fit: BoxFit.fill,), radius: 50, backgroundColor: const Color.fromARGB(255, 235, 230, 230),),
                      CircleAvatar(child: Image.asset('assets/logo/the_north_face.png', height: 30, fit: BoxFit.fill,), radius: 50, backgroundColor: const Color.fromARGB(255, 235, 230, 230),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('New Arrial', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                      TextButton(onPressed: (){}, child: const Text('See all', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 49, 129, 52)),),)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NewArrial(name: 'Vans', fon: 'assets/shoe_1.png', price: '\$ 15.00'),
                      NewArrial(name: 'Tufli', fon: 'assets/shoe_2.png', price: '\$ 37.00'),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NewArrial(name: 'Shippak', fon: 'assets/shoe_3.png', price: '\$ 8.00'),
                      NewArrial(name: 'Etik', fon: 'assets/shoe_4.png', price: '\$ 5.00'),
                    ],
                  ),
                ),
              ],
              ),
           ],
          ),
          Positioned(
            left: 30,
            bottom: 15,
            child: Container(
                height: 70,
                width: 300,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.home, color: Colors.white,)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.grey,)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.favorite , color: Colors.grey,)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle, color: Colors.grey,)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
