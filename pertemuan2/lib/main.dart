import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor: Color.fromARGB(200, 200, 20, 20),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CupertinoButton(
                        child: const Text('BERITA TERBARU'),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: CupertinoButton(
                        child: const Text(
                          'PERTANDINGAN HARI INI',
                          style: TextStyle(overflow: TextOverflow.ellipsis),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    children: [
                      Image.network(
                        'https://static.jutarnji.hr/images/slike/2021/08/15/o_7233859_1280.jpg',
                        width:
                            400, // Sesuaikan lebar gambar sesuai kebutuhan Anda
                        height:
                            190, // Sesuaikan tinggi gambar sesuai kebutuhan Anda
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              'Diego Costa Melepaskan Diri dari Atletico Madrid',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center, // Menengahkan teks
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            color: Color.fromARGB(200, 200, 20, 20),
                            alignment: Alignment.centerLeft,
                            child: Text("Transfer",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            // width: 100,
                            // height: ,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: List.generate(5, (index) => ItemCard()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.network(
                'https://i.pinimg.com/736x/03/39/0c/03390cd7b821795cea37cad7de78f658--diego-costa-uefa-champions-league.jpg',
                width: 150, // Sesuaikan lebar gambar sesuai kebutuhan Anda
                height: 150, // Sesuaikan tinggi gambar sesuai kebutuhan Anda
              ),
              SizedBox(width: 10), // Spasi antara gambar dan teks
              Expanded(
                child: Text(
                  'Resmi! Diego Costa Gabung Wolverhampton Wanderers.',
                  style: TextStyle(
                      fontSize:
                          10), // Sesuaikan gaya teks sesuai kebutuhan Anda
                ),
              ),
            ],
          ),
          Divider(
            height: 5,
            indent: 5,
            endIndent: 5,
            thickness: 5,
          ),
          Text('Barcelona feb 15.2023')
        ],
      ),
    );
  }
}
