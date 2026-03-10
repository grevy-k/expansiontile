import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ExpansionTile Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HelpCenterScreen(),
    );
  }
}

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Help Center'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            'Tap any question to see the answer:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),

          Card(
            child: ExpansionTile(
              leading: Icon(Icons.school),
              title: Text('What should I bring to class?'),
              initiallyExpanded: false,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Bring your notebook, laptop, charger, and student ID.',
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}