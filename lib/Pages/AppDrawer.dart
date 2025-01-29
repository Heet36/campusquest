import 'package:flutter/material.dart';

void main() {
  runApp(const Appdrawer());
}

class Appdrawer extends StatelessWidget {
  const Appdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Menu Example',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Track which sections are expanded
  final Map<String, bool> _expandedSections = {
    'ABOUT': false,
    'ADMISSION': false,
    'ACADEMICS': false,
    'CAMPUS LIFE': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              // User Profile Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: const Text(
                        'VR',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'abcd123@gmail.com',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),

              // Search Bar
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  ),
                ),
              ),

              // Menu Items
              Expanded(
                child: Container(
                  color: const Color(0xFFE8E9FF), // Light purple background
                  child: ListView(
                    children: _expandedSections.entries.map((entry) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              entry.key,
                              style: const TextStyle(
                                color: Color(0xFF3F51B5), // Indigo color
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: Icon(
                              entry.value
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              color: const Color(0xFF3F51B5),
                            ),
                            onTap: () {
                              setState(() {
                                _expandedSections[entry.key] = !entry.value;
                              });
                            },
                          ),
                          if (entry.value)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text('${entry.key} Item 1'),
                                    dense: true,
                                  ),
                                  ListTile(
                                    title: Text('${entry.key} Item 2'),
                                    dense: true,
                                  ),
                                  ListTile(
                                    title: Text('${entry.key} Item 3'),
                                    dense: true,
                                  ),
                                ],
                              ),
                            ),
                          const Divider(height: 1),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text('Main Content'),
      ),
    );
  }
}