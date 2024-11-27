import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Enhanced UI'),
          backgroundColor: Colors.deepPurple,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                print("Notifications clicked");
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                print("Settings clicked");
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Floating button pressed");
          },
          backgroundColor: Colors.deepPurple,
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  print('Home clicked');
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  print('Profile clicked');
                },
              ),
            ],
          ),
        ),
        body: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                botton(Icons.book, 'Projects', () {}),
                botton(Icons.draw, 'Draft', () {}),
                botton(Icons.switch_access_shortcut_outlined, 'Shared with me',
                    () {}),
                const Spacer(),
                botton(Icons.settings, 'Settings', () {}),
                botton(Icons.people, 'Invite members', () {}),
                botton(Icons.add, 'New Draft', () {}),
                botton(Icons.add, 'New Project', () {}),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Side Hustle',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 35,
                        ),
                        SizedBox(width: 800),
                        Icon(Icons.link),
                        SizedBox(width: 20),
                        Text('Share'),
                        SizedBox(width: 20),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const LinearProgressIndicator(
                      value: 0.7, // Simula progreso del 70%
                      backgroundColor: Colors.grey,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        nota(),
                        const SizedBox(width: 40),
                        nota(),
                        const SizedBox(width: 40),
                        nota(),
                        const SizedBox(width: 40),
                        nota(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nota() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              const Text('Titulo x'),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec nisl sodales fermentum. Nullam nec nisl sodales, fermentum nisl nec, fermentum nisl. Nullam nec nisl sodales, fermentum nisl nec, fermentum nisl.'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(text),
          ],
        ),
      ),
    );
  }
}
