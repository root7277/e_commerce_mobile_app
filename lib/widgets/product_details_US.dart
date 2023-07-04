// ignore: file_names
import 'package:flutter/material.dart';

class USWidget extends StatefulWidget {
  const USWidget({super.key});

  @override
  State<USWidget> createState() => _USWidgetState();
}

class _USWidgetState extends State<USWidget> {
  int count = 0;

  Widget us(String title, int index){
    return  InkWell(
            onTap: () {
              setState(() {
              count = index;
              });
            },
           child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(  
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: count == index? Colors.green: Colors.white,
              ),   
             child: Center(child: Text('US 4', style: TextStyle(color: count == index? Colors.white: Colors.grey),)),
            ),
          );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          us('US 4', 0),
          us('US 4.5', 1),
          us('US 5', 2),
          us('US 5.5', 3),
          us('US 6', 4),
        ],
      ),
    );
  }
}