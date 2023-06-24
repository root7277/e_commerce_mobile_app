import 'package:flutter/material.dart';

class NewArrial extends StatefulWidget {
  final String name;
  final String fon;
  final String price;

  const NewArrial({
    super.key,
    required this.name,
    required this.fon,
    required this.price,
  });

  @override
  State<NewArrial> createState() => _NewArrialState();
}

class _NewArrialState extends State<NewArrial> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'product_details');
      },
      child: Column(
        children: [
          Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 233, 231, 231),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.favorite, color: Color.fromARGB(255, 247, 33, 33), size: 35,),
                  ),
                ),
                Image.asset(widget.fon, height: 60,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SizedBox(
              width: 160,
              child: Column(
                children: [
                  SizedBox(
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                        const Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Text(widget.price, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}