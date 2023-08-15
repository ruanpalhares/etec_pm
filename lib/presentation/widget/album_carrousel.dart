import 'package:aula_0108/domain/album.dart';
import 'package:aula_0108/presentation/widget/display_album.dart';
import 'package:flutter/material.dart';

class AlbumCarrousel extends StatelessWidget {
  final List<Album> albums;
  const AlbumCarrousel({
    super.key,
    required this.albums,
  });

  @override
  Widget build(BuildContext context) {
    const height = 220.0;
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.all(10),
      height: height,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Todos os Albuns',
                style: theme.textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: albums.length,
                itemBuilder: (context, index) =>
                    GestureDetector(
                      onTap: () => navigateToTrackList(context, albums[index]),
                      child: DisplayAlbum(album: albums[index])),
              ),
            ),
          ],
        ),
      ),
    );
    
  }
  void navigateToTrackList(BuildContext context, Album album){
    Navigator.pushNamed(context, '/track-list', arguments: album,);
  }
}
