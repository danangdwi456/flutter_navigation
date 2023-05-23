import 'package:flutter/material.dart';
import 'package:hellostate/halamankedua.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Login Page";
  var body = "Ini isi dari body";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.adjust),
            title: Text("Pinjam"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyWidget(
                    parameter: "A",
                    parameter2: "B",
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Pengembalian"),
          )
        ]),
      ),
      appBar: AppBar(title: Text(judul)),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          judul = "Ini Judul yang Berubah";
          body = "Ini Body yang Berubah";
        });

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MyWidget(
              parameter: "A",
              parameter2: "B",
            ),
          ),
        );
      }),
      body: Text(body),
    );
  }
}
