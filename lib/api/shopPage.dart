import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteAPI extends StatefulWidget {
@override
_DeleteAPIState createState() => _DeleteAPIState();
}

class _DeleteAPIState extends State<DeleteAPI> {
String _response = 'No response yet';

Future<void> deleteData() async {
final response = await http.delete(
Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
);

if (response.statusCode == 200) {
setState(() {
_response = 'Delete successful!';
});
} else {
setState(() {
_response = 'Delete failed: ${response.statusCode}';
});
}
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(),
  );
}
}