import 'package:flutter/material.dart';
import 'package:e_commerce_mobile_app/DataBase/data.dart';

class CartPageWidget extends StatefulWidget {

  const CartPageWidget({super.key});

  @override
  State<CartPageWidget> createState() => _CartPageWidgetState();
}

class _CartPageWidgetState extends State<CartPageWidget> {
  int chekbox_count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index){
                      final img = data[index];
                      final ontab_chek = chekbox_ontab[index];
                      return ListTile(
                        leading: Checkbox(
                        activeColor: Colors.green,
                        value: ontab_chek['ontab'], 
                        onChanged: (value){
                          setState(() {
                            ontab_chek['ontab'] = !ontab_chek['ontab'];
                            if(ontab_chek['ontab']){
                              chekbox_count++;
                            }else{
                              chekbox_count--;
                            }
                          });
                        }
                      ),
                      title: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            width: 65,
                            height: 65,
                            decoration: const BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(20)),
                             color: Color.fromARGB(255, 229, 235, 247),
                            ),
                            child: Image.asset(img['image'], width: 80,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(img['name'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                              const Text('US 6', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(img['price'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                  const SizedBox(width: 15),
                                  SizedBox(
                                    width: 105,
                                    child: Row(
                                      children: [
                                        ElevatedButton(
                                    onPressed: (){
                                      setState(() {
                                        if(ontab_chek['each_count'] > 1){
                                        ontab_chek['each_count']--;
                                        }
                                        else{
                                          ontab_chek['each_count'];
                                        }
                                      });
                                    }, 
                                    style: const ButtonStyle(
                                      minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                                      backgroundColor: MaterialStatePropertyAll(Colors.grey),
                                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                                    ),
                                    child: const Text('-', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                  ),
                                  Text("${ontab_chek['each_count']}", style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                  ElevatedButton(
                                    onPressed: (){
                                      setState(() {
                                        ontab_chek['each_count']++;
                                      });
                                    }, 
                                    style: const ButtonStyle(
                                      minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                                      backgroundColor: MaterialStatePropertyAll(Colors.green),
                                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                                    ),
                                    child: const Text('+', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                  ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                     );
                    }
                  ),
        ),
        Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 50),
              child: Text('Selected Item ($chekbox_count)', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: (){}, 
                  style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(350, 50)),
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                  ),
                  child: const Text('Checkout', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                ),
            ),
      ],
    );
  }
}