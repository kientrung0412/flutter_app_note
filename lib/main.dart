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
    var contacts = List.generate(
      100,
      (index) => ItemContact(
        showFirstChar: index % 3 == 0,
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120),
                      border: Border.all(
                          color: Colors.grey, style: BorderStyle.solid)),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(children: [
                    const Icon(Icons.menu),
                    const SizedBox(
                      width: 16,
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for people',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Center(
                        child: Text(
                          'CE',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ]),
                )),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return contacts[index];
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 16);
                },
                itemCount: contacts.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ItemContact extends StatelessWidget {
  const ItemContact({super.key, this.showFirstChar = false});

  final bool showFirstChar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'J',
            style: TextStyle(
                fontSize: 24,
                color: Colors.black.withOpacity(
                  showFirstChar ? 0.6 : 0,
                ),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 32,
          ),
          ClipOval(
            child: SizedBox.square(
              dimension: 50,
              child: Image.network(
                'https://scontent.fhan14-2.fna.fbcdn.net/v/t39.30808-6/429765691_1509923076240496_3227231094154993601_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEUva0bUWKd3UA4zhnoN-ThnIUBhabpi7achQGFpumLthpNZQwLjW84ZBEwZn5NUiyut_oCWTLVN1rq5qoFRxMW&_nc_ohc=3hPHNNkxXagAb6g9xG4&_nc_ht=scontent.fhan14-2.fna&oh=00_AfBWfzqck4oOdWtF6_MnBL20Fr61JyW40HeWfHMNMAkFHA&oe=661B4911',
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Nguyen Trung',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Nội dung'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
