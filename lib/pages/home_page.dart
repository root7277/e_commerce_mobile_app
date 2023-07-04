import 'package:e_commerce_mobile_app/widgets/new_arrilal_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_mobile_app/DataBase/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with TickerProviderStateMixin{
  int one = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(onPressed: (){}, icon: const Icon(Icons.sort, color: Colors.black,)),
                actions: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none, color: Colors.black,)),
                ],
              ),
        body: Stack(
          children: [
            Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 20),
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
              SizedBox(
                height: 200,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      one = value;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index){
                    final items = data[index];
                  return Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 5,
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
                      Image.asset(items['image'], height: 80,),
                    ],
                  ),
                );
                  }
                ),
              ),
              TabPageSelector(
                color: Colors.white,
                selectedColor: const Color.fromARGB(255, 45, 135, 10),
                indicatorSize: 10,
                controller: TabController(length: data.length, vsync: this, initialIndex: one),
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
                height: 65,
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
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('New Arrial', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                    TextButton(onPressed: (){}, child: const Text('See all', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 49, 129, 52)),),)
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 250,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index){
                    final items_2 = data[index];
                    return NewArrial(name: items_2['name'], fon: items_2['image'], price: items_2['price']);
                  }
                ),
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
                  borderRadius: BorderRadius.all(Radius.circular(40))
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
