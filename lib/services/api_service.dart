import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/song_model.dart';

class ApiService {
  Future<List<Song>> fetchSongs(String query) async {
    final String encodedQuery = Uri.encodeComponent(query);
    final String url = 'https://itunes.apple.com/search?term=$encodedQuery&entity=song&limit=25';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> results = data['results'];

        return results.map((json) => Song.fromJson(json)).toList();
      } else {
        throw Exception('Gagal memuat data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Terjadi kesalahan koneksi: $e');
    }
  }
}