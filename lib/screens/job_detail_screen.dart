import 'package:flutter/material.dart';
import '../models/job.dart';

class JobDetailScreen extends StatelessWidget {
  final Job job;

  const JobDetailScreen({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(job.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Company: ${job.company}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Description:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text(job.description),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement application submission logic
                print('Applied for ${job.title}');
              },
              child: const Text('Apply Now'),
            ),
          ],
        ),
      ),
    );
  }
}
