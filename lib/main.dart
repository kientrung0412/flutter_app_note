import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 160),
          child: ListView(
            children: const [
              ItemNote(),
              SizedBox(height: 30,),
              ItemNote(),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemNote extends StatelessWidget {
  const ItemNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Tiêu đề hjh jkasjdh jaskhd jkashdjashd jkashdj khasjkd hjk hjasdjasjdasdasdada uhdajkhdjkhakjsdhakjsdhkj',
                  ),
                ),
                Text(
                  'Tiêu đề',
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
          Text('Nội dung'),
        ],
      ),
    );
  }
}


