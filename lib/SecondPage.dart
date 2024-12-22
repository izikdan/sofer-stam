import 'package:flutter/material.dart';
import 'main.dart';
import 'FullScreenImagePage.dart';

class SecondPage extends StatefulWidget {
  final String text;
  final List<String> imageUrl;

  const SecondPage({super.key, required this.text, required this.imageUrl});
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            // mainAxisExtent: 280 ,
            mainAxisSpacing: 8,
          ),
          itemCount: widget.imageUrl.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FullScreenImagePage(
                        imageUrl: widget.imageUrl[index],
                      ),
                    ),
                  );
                },
                child: Image.asset(
                  widget.imageUrl[index],
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ));
          },
        ),
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
