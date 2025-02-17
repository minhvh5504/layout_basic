import 'package:flutter/material.dart';

List<Color> colors = [
  Colors.red,
  Colors.pink,
  Colors.amber,
  Colors.cyan,
  Colors.blueAccent,
  Colors.cyanAccent,
  Colors.deepPurpleAccent,
  Colors.orangeAccent
];

class LayoutBasic6 extends StatelessWidget {
  const LayoutBasic6({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Animation Hero",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.8,
            ),
            itemCount: 20,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                          color: colors[index % colors.length], index: index),
                    ),
                  );
                },
                child: Hero(
                  tag: "hero-$index",
                  child: Container(
                    decoration: BoxDecoration(
                      color: colors[index % colors.length],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Color color;
  final int index;

  const DetailPage({super.key, required this.color, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: "hero-$index",
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
