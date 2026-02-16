import 'package:flutter/material.dart';

// Menüdeki ürünleri göstermek için kullanılan widget
class ProductCard extends StatelessWidget {
  final Widget? visual;
  final String? title;
  final int? count;
  const ProductCard({
    super.key,
    required this.visual,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.3,
        height: MediaQuery.sizeOf(context).width * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            visual ?? Icon(Icons.question_mark_rounded, size: 100),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(title ?? "Başlık Girilmedi"),
                Text("Adet : $count"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
