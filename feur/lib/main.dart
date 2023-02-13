import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feur',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Roboto_Slab',
      ),
      home: Scaffold(
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Enter a manga URL to get started!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Divider(
                  height: 20,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.transparent,
                ),
                const TextField(
                  style: TextStyle(fontFamily: 'Roboto_Mono', fontSize: 30),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: 'https://mangasite.com/manga/',
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto_Mono',
                      fontSize: 30,
                    ),
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.transparent,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    print('Download');
                  },
                  icon: const Icon(Icons.search),
                  label: const Text(
                    'Search',
                    maxLines: 1,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
