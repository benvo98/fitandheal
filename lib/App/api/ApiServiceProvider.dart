import 'dart:convert';
import 'dart:io';

import 'package:fitandheal/App/models/Workout.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ApiServiceProvider {
  final String _BASE_URL = "https://reqres.in/api/users";

  Future<Workout> getUser() async {
    String fileName = "userdata.json";

    var dir = await getTemporaryDirectory();

    File file = new File(dir.path + "/" + fileName);
    if (file.existsSync()) {
      print("Loading from cache");
      var jsonData = file.readAsStringSync();
      Workout response = Workout.fromJson(json.decode(jsonData));
      return response;
    } else {
      print("Loading from API");
      var response = await http.get(_BASE_URL);

      if (response.statusCode == 200) {
        var jsonResponse = response.body;
        Workout res = Workout.fromJson(json.decode(jsonResponse));
        //save json in local file
        file.writeAsStringSync(jsonResponse, flush: true, mode: FileMode.write);

        return res;
      }
    }
  }
}
