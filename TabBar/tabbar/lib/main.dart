import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maul'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.photo)),
            Tab(icon: Icon(Icons.person)),
            Tab(icon: Icon(Icons.calculate)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Content of Tab 1
          _buildTab1Content(),
          // Content of Tab 2
          _buildTab2Content(),
          // Content of Tab 3
          Center(child: Text('Tab 3 Content')),
        ],
      ),
    );
  }

  Widget _buildTab1Content() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          "assets/gojo${index + 1}.jpg",
          fit: BoxFit.cover,
        );
      },
    );
  }

  Widget _buildTab2Content() {
    return SingleChildScrollView(
      child: Center(
        
        child: Container(
          color: Colors.blue,
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/me.jpg"),
              ),
              SizedBox(height: 20),
              Text(
                "Saya adalah Siswa dari SMK Bakti Nusantara 666",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                "Keahlian :",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Manajemen Waktu", style: TextStyle(color: Colors.black)),
                  Text("• Menguasai Excel", style: TextStyle(color: Colors.black)),
                  Text("• Basic Coding HTML", style: TextStyle(color: Colors.black)),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Contact :",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("📞  083120913362", style: TextStyle(color: Colors.black)),
                  Text("✉ mauleleelite@gmail.com", style: TextStyle(color: Colors.black)),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "DATA PRIBADI",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Nama             : Fahrul Aqmal Mauludi", style: TextStyle(color: Colors.black)),
                  Text("• TTL                 : Bandung, 22 Maret 2007", style: TextStyle(color: Colors.black)),
                  Text("• Alamat           : Kp. Cikalang RT:02/RW:05", style: TextStyle(color: Colors.black)),
                  Text("• Jenis Kelamin : Laki-Laki", style: TextStyle(color: Colors.black)),
                  Text("• Agama           : Islam", style: TextStyle(color: Colors.black)),
                  Text("• Status           : Belum Menikah", style: TextStyle(color: Colors.black)),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "PENDIDIKAN",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• TK Bunyanul Hasan", style: TextStyle(color: Colors.black)),
                  Text("• SDN Cikalang", style: TextStyle(color: Colors.black)),
                  Text("• SMPN 1 Cileunyi", style: TextStyle(color: Colors.black)),
                  Text("• SMK Bakti Nusantara 666", style: TextStyle(color: Colors.black)),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "PENGALAMAN",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              SizedBox(height: 10),
              Text("• Content Creator", style: TextStyle(fontSize: 15, color: Colors.black)),
              SizedBox(height: 20),
              Text(
                "HOBI",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Playing Game", style: TextStyle(color: Colors.black)),
                  Text("• Watch Movie", style: TextStyle(color: Colors.black)),
                  Text("• Badminton", style: TextStyle(color: Colors.black)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 Widget _buildTab3Content() {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Perhitungan Luas Segitiga",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              SizedBox(height: 20),
              // Insert your area calculation code here
              Text(
                "Masukkan alas dan tinggi segitiga:",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(height: 10),
              // Input fields for base and height
              TextField(
                decoration: InputDecoration(labelText: 'Alas'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Tinggi'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              // Button to trigger the calculation
              ElevatedButton(
                onPressed: () {
                  // Calculate the area and show the result
                  // You can replace the code below with your own area calculation logic
                  var baseController;
                  double base = double.tryParse(baseController.text) ?? 0.0;
                  var heightController;
                  double height = double.tryParse(heightController.text) ?? 0.0;
                  double area = 0.5 * base * height;

                  // Show the result
                  var context;
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Hasil Perhitungan'),
                        content: Text('Luas Segitiga: $area'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Hitung Luas'),
              ),
            ],
          ),
        ),
      ),
    );
  }