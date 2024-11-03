class Job {
  final String id;
  final String title;
  final String company;
  final String description;
  final String location; // New property
  final String salary; // New property
  final String requirements; // New property

  Job({
    required this.id,
    required this.title,
    required this.company,
    required this.description,
    required this.location,
    required this.salary,
    required this.requirements,
  });
}
