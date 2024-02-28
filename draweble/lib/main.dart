import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Membuat Draweble",
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
      ),
      drawer: _buildDrawer(),
    );
    throw UnimplementedError();
  }
}

Widget _buildDrawer() {
  return SizedBox(
    child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Image(image: AssetImage("assets/download.jpeg")),
            accountName: Text("Rizki"),
            accountEmail: Text("kyeerahma@gmail.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/download (1).jpeg"),
                     fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Beranda"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Pegawai"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text("Transaksi"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.emoji_emotions),
            title: Text("Profile"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Tentang"),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}
