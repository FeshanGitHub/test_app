import 'package:shared_preferences/shared_preferences.dart';

Future setMonth(String month) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('month', month);
}
Future<String?> getMonth() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('month');
}
Future removeMonth() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.remove('month');
}

Future setYear(String year) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('year', year);
}
Future<String?> getYear() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('year');
}
Future removeYear() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.remove('year');
}