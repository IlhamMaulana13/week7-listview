import 'package:flutter/material.dart';

class MyListview extends StatelessWidget {
  const MyListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView Separate",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView.separated(
        padding: const EdgeInsets.all(16),

        itemCount: 5,

        scrollDirection: Axis.vertical,
        itemBuilder: (contex, index) {
          return Container(
            height: 60,
            color: Colors.blue[100],
            child: Center(child: Text('Item ${index + 1}', style: TextStyle(fontWeight: FontWeight.bold),)),
          );
        },

        separatorBuilder: (context, index) {
          return Divider(color: Colors.grey, thickness: 1,);
        },
      ),
    );
  }
}
