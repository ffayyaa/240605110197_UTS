
class Song {
  final String trackName;
  final String artistName;
  final String collectionName;
  final String artworkUrl;
  final String previewUrl;

  Song({
    required this.trackName,
    required this.artistName,
    required this.collectionName,
    required this.artworkUrl,
    required this.previewUrl,
  });

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      trackName: json['trackName'] ?? 'Judul Tidak Diketahui',
      artistName: json['artistName'] ?? 'Artis Tidak Diketahui',
      collectionName: json['collectionName'] ?? 'Album Tidak Diketahui',
      artworkUrl: (json['artworkUrl100'] ?? 'https://via.placeholder.com/400').replaceAll('100x100bb', '400x400bb'),
      previewUrl: json['previewUrl'] ?? '',
    );
  }
}