import 'package:flutter/material.dart';

// Menüdeki ürünleri göstermek için kullanılan widget
class ProductCard extends StatelessWidget {
  final Widget visual;
  final String title;
  final int count;
  final void Function() add;
  final void Function() remove;
  const ProductCard({
    super.key,
    required this.visual,
    required this.title,
    required this.count,
    required this.add,
    required this.remove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.02),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.4,
          height: MediaQuery.sizeOf(context).height * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              visual,

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: remove, icon: Icon(Icons.remove)),
                      IconButton(onPressed: add, icon: Icon(Icons.add)),
                      Spacer(),
                      Text("Adet : $count"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
