import 'package:flutter/material.dart';

class MyListviewHorizontal extends StatelessWidget {
  const MyListviewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView Separate Horizontal",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView.separated(
        // Jumlah item (sesuai pola modul)
        itemCount: 5,

        // Padding di sekitar list
        padding: const EdgeInsets.all(16.0),

        // Scroll horizontal
        scrollDirection: Axis.horizontal,

        // Builder untuk setiap item
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            height: 60,
            color: Colors.green[200],
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          );
        },

        // Builder untuk separator
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16); // sama seperti Divider saat horizontal
        },
      ),
    );
  }
}
