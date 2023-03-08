// This program reads a csv file and prints out the total time spent on each activity
// Run: dart basic_data_processing.dart assets/CSVExport-Code_With_Andrea-2019.csv

import 'dart:io';

void main(List<String> arguments) {
  //verify that the user has provided a filename
  if (arguments.isEmpty) {
    print('Usage: dart basic_data_processing.dart <input_file.csv>');
    exit(
        1); // hard exit out of the program, convention: error code 0 for all is well, non-zero for error
  }

  //read the file (first argument as the filename)
  final filename = arguments.first;
  final file = File(filename).readAsLinesSync();

  //remove the header line
  file.removeAt(0);

  //read the activities into a set (set will remove duplicates)
  final activities = <String>{};
  double time = 0.0;
  for (var line in file) {
    var element = line.split(',')[5];
    activities.add(element);
  }
  //loop through the file and add up the time by activity type
  for (var activity in activities) {
    time = 0.0;
    //skip the empty activity
    if (activity == '""') {
      continue;
    }
    //loop through the file and add up the time
    for (var line in file) {
      if (line.split(',')[5] == activity) {
        time = time + double.parse((line.split(',')[3]).replaceAll('"', ''));
      }
    }
    //calculate the space needed for allignment on the floating point
    String space =
        ' ' * (30 - (activity.length + time.toStringAsFixed(1).length));
    //print the activity and time
    print('${activity.replaceAll('"', '')}: $space ${time.toStringAsFixed(1)}');
  }
}
