import 'package:http/http.dart' as http;

Future<http.Response> fetchMedicine(int k) async {
  var wwe = 'https://backendfirst1.herokuapp.com/medicino/$k';
  return await http.get(Uri.parse(wwe));
}

List<String> dis = [];
List<String> med = [];
List<String> img = [];
