import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhoApp?'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.people)),
              Tab(text: 'Chat'),
              Tab(text: 'Pembaruan'),
              Tab(text: 'Panggilan'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Content for CV Tab
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Curriculum Vitae',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Add your CV content here
                  ListTile(
                    title: Text('Nama: '),
                  ),
                  ListTile(
                    title: Text('Lulusan: '),
                  ),
                  // Add more CV details as needed
                ],
              ),
            ),
            // Content for Status Tab
            SingleChildScrollView(
              child: Column(
                children: List.generate(
                  1,
                  (index) => ListTile(
                    title: Text('+62 821 1834 9347 $index'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}










import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('My Scrollbar Chapter 3 From XI PPLG 3'),
         ),
         body: Scrollbar(
           child: GridView.builder(
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 3,
             ),
             itemCount: 9999, // Ubah jumlah item sesuai kebutuhan Anda
             itemBuilder: (BuildContext context, int index) {
               return Card(
                 child: Center(
                   child: Text('For The Young $index'),
                 ),
               );
             },
           ),
         ),
       ),
     );
   }
 }










import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Scrollbar '),
        ),
        body: Scrollbar(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('All In Alfiansyah Comeng $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}











// import 'package:flutter/material.dart';

// void main() {
//   runApp(ChatApp());
// }

// class ChatApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Chat App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ChatScreen(),
//     );
//   }
// }

// class ChatScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: Text('KonohaApp'),
//           bottom: TabBar(
//             tabs: [
//               Tab(icon: Icon(Icons.people)),
//               Tab(text: 'Chat'),
//               Tab(text: 'Pembaruan',),
//               Tab(text: 'Panggilan',)
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             ChatList(type: 'Komunitas',),
//             ChatList(type: 'Chat'),
//             ChatList(type: 'Pembaruan'),
//             ChatList(type: 'Panggilan'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ChatList extends StatelessWidget {
//   final String type;

//   ChatList({required this.type});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 5,
//       itemBuilder: (context, index) {
//         return ListTile(
//           leading: CircleAvatar(
//             backgroundColor: Colors.black,
//             child: Text('A'),
//           ),
//           title: Text('$type'),
//           subtitle: Text('Message $index'),
//           trailing: Text('00:00 AM'),
//           onTap: () {
//             // Handle tap
//           },
//         );
//       },
//     );
//   }
// }

// mixin black {
// }