import 'package:flutter/material.dart';
import 'main.dart';
// import 'linkImages.dart';

class FullScreenImagePage extends StatelessWidget {
  final String imageUrl;
  const FullScreenImagePage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.abc_rounded),
            onPressed: () {
              Navigator.pop(context); // מחזיר לעמוד הקודם
            },
          ),
        ],
      ),
      body: Center(
        child: Image.asset(imageUrl),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomePage(title: '',
            ),
          ),
        );
      },tooltip: ("חזור לעמוד הבית"),
      child: const Icon( Icons.home_filled),
      ),
    );
  }
}
