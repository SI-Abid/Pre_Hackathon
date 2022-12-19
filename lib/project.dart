import 'dart:io';
class Coordinate {
  double lat;
  double lng;
  Coordinate({required this.lat, required this.lng});
}
class Project {
  String name;
  String category;
  String agency;
  String description;
  DateTime startTime;
  DateTime endTime;
  List<Coordinate> coordinates;
  int budget;
  String percentComplete;
  int? issueCount;

  Project(
      {required this.name,
      required this.category,
      required this.agency,
      required this.description,
      required this.startTime,
      required this.endTime,
      required this.coordinates,
      required this.budget,
      required this.percentComplete,
      this.issueCount});

  static List<Project> getProjects() {
    // load projects.csv and return a list of projects
    var projects = <Project>[];
    File file = File('projects.csv');
    List<String> lines = file.readAsLinesSync();
    for (var line in lines) {
      List<String> fields = line.split(',');
      projects.add(Project(
          name: fields[0],
          category: fields[1],
          agency: fields[2].split(',') as String,
          description: fields[3],
          startTime: DateTime.parse(fields[4]),
          endTime: DateTime.parse(fields[5]),
          budget: int.parse(fields[14]),
          percentComplete: fields[15],
          coordinates: 
          // one or more coordinates
          fields[6].split(',').map((e) {
            List<String> latlng = e.split(',');
            return Coordinate(lat: double.parse(latlng[0]), lng: double.parse(latlng[1]));
          }).toList(),
          issueCount: 0));
    }
    return projects;
  }
}
