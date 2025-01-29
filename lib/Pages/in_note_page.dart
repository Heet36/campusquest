import 'package:flutter/material.dart';

class NotesDetailPage extends StatelessWidget {
  const NotesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'OBM752 Notes / Materials',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          UnitCard(
            unitNumber: 1,
            title: 'Overview of Hospital Administration',
          ),
          SizedBox(height: 12),
          UnitCard(
            unitNumber: 2,
            title: 'Human Resource Management in Hospital',
          ),
          SizedBox(height: 12),
          UnitCard(
            unitNumber: 3,
            title: 'Recruitment and Training',
          ),
          SizedBox(height: 12),
          UnitCard(
            unitNumber: 4,
            title: 'Supportive Services',
          ),
          SizedBox(height: 12),
          UnitCard(
            unitNumber: 5,
            title: 'Communication and Safety Aspects in Hospital',
          ),
        ],
      ),
    );
  }
}

class UnitCard extends StatelessWidget {
  final int unitNumber;
  final String title;

  const UnitCard({
    super.key,
    required this.unitNumber,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE3F2FD), // Light blue color matching the design
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Unit $unitNumber',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.download_outlined,
              color: Colors.grey,
              size: 20,
            ),
            onPressed: () {
              // Implement download functionality
            },
          ),
        ],
      ),
    );
  }
}