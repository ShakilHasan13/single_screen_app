import 'package:flutter/material.dart';

void main() {
  runApp(const SinglePageApp());
}

class SinglePageApp extends StatelessWidget {
  const SinglePageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 2.0,

        title: const Text('My Flutter App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Add your search functionality here
            },
          ),
          IconButton(
            icon: const Icon(Icons.work),
            onPressed: () {
              // Add your settings functionality here
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.amberAccent,
              child: const Center(
                child: Text(
                  "It's a Drawer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
             ListTile(
              title:  const Text('Job 1'),
               onTap: (){},
            ),
             ListTile(
              title: const Text('Job 2'),
               onTap: (){},
            ),
          ],
        ),
      ),
      body:const Center(
        child: Text(
          'My Flutter App',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child:const Icon(
          Icons.add,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
