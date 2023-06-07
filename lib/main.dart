import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Starts the app with MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          elevation: 15,
          backgroundColor: Colors.green,
          actions: [
            IconButton(
                onPressed: () {
                  mySnackBar("I am Comments", context);
                },
                icon: const Icon(Icons.comment)),
            IconButton(
                onPressed: () {
                  mySnackBar("I am Search", context);
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  mySnackBar("I am Settings", context);
                },
                icon: const Icon(Icons.settings)),
          ],
        ),
        // ========= Floating Action Button ========
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          backgroundColor: Colors.green,
          onPressed: () {
            mySnackBar('This is Floating action button', context);
          },
          child: const Icon(Icons.add),
        ),
        // ========= Bottom Navigation Bar ========
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Contact'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
        // ========= Drawer ========
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: Image.network(
                      "https://pixlok.com/wp-content/uploads/2021/05/flutter-logo-768x768.jpg"),
                  accountName: const Text('Mukarrom Hosain'),
                  accountEmail: const Text('mukarrom21@gmail.com'),
                  decoration: const BoxDecoration(color: Colors.green),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  mySnackBar("I am Home", context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail),
                title: const Text('Contact'),
                onTap: () {
                  mySnackBar("I am Contact", context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  mySnackBar("I am Profile", context);
                },
              ),
            ],
          ),
        ),
        body: const Page1());
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.pink,
            height: 100,
            width: 100,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            alignment: Alignment.center,
            child: const Text(
              'Ostad',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            alignment: Alignment.center,
            // decoration: BoxDecoration(
            //   color: Colors.blue,
            //   border: Border.all(color: Colors.amber, width: 4),
            // ),
            child: const Text(
              'Ostad',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
