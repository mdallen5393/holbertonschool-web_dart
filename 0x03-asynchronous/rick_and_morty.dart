import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      for (var character in data) {
        print(character['name']);
      }
    } else {
      print('Failed to fetch Rick and Morty characters. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('error caught: $error');
  }
}
