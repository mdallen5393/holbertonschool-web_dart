import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final client = http.Client();
  try {
    final url = Uri.https('rickandmortyapi.com', '/api/character');
    final resp = await client.get(url);
    final int pages = jsonDecode(resp.body)['info']['pages'];

    for (int page = 1; page <= pages; page++) {
      await printCharacterPage(page, client);
    }
  } catch (error) {
    print('error caught: $error');
  } finally {
    client.close()
  }
}

printCharacterPage(int page, http.Client client) async {
  final url = Uri.https('rickandmortyapi.com', '/api/character/', {'page': '$page'});
  final response = await client.get(url);
  final List characterResults = jsonDecode(response.body)['results'];

  for (final character in characterResults) {
    print(character['name']);
  }
}