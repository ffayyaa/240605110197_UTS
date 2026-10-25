import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/song_model.dart';

class DetailPage extends StatefulWidget {
  final Song song;
  const DetailPage({super.key, required this.song});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _togglePlay() async {
    if (isPlaying) {
      await _audioPlayer.pause();
    } else {
      if (widget.song.previewUrl.isNotEmpty) {
        await _audioPlayer.play(UrlSource(widget.song.previewUrl));
      }
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sedang Diputar'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                widget.song.artworkUrl,
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.song.trackName,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.song.artistName,
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),

            const SizedBox(height: 50),

            IconButton(
              iconSize: 80,
              color: Colors.indigo,
              icon: Icon(isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill),
              onPressed: widget.song.previewUrl.isNotEmpty ? _togglePlay : null,
            ),

            if (widget.song.previewUrl.isEmpty)
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Preview audio tidak tersedia', style: TextStyle(color: Colors.red)),
              ),
          ],
        ),
      ),
    );
  }
}