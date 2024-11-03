import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/job.dart';

class ApiService {
  final String baseUrl = "https://example.com/api"; // Replace with your backend API URL

  Future<List<Job>> fetchJobs() async {
    final response = await http.get(Uri.parse('$baseUrl/jobs'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => Job(
        id: job['id'],
        title: job['title'],
        company: job['company'],
        description: job['description'],
      )).toList();
    } else {
      throw Exception('Failed to load jobs');
    }
  }
  Future<void> createJob(Job job) async {
  final response = await http.post(
    Uri.parse('$baseUrl/jobs'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode({
      'title': job.title,
      'company': job.company,
      'description': job.description,
      'location': job.location,
      'salary': job.salary,
      'requirements': job.requirements,
    }),
  );

  if (response.statusCode != 201) {
    throw Exception('Failed to create job');
  }
}
}
