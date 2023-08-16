import 'package:aula_0108/domain/album.dart';
import 'package:aula_0108/domain/music.dart';

List<Album> loadAlbums() {
  return <Album>[
    Album(
      title: 'Title 1',
      artist: 'Artista 1',
      release: 2015,
      cover: 'assets/a7x_album_cover.jpg',
      musics: <Music>[
        Music(title: 'Track 1', duration: '03:03', number: 1, artist: 'Artista 1', albumCover: 'assets/a7x_album_cover.jpg'),
        Music(title: 'Track 2', duration: '03:03', number: 2, artist: 'Artista 1', albumCover: 'assets/a7x_album_cover.jpg'),
        Music(title: 'Track 3', duration: '03:03', number: 3, artist: 'Artista 1', albumCover: 'assets/a7x_album_cover.jpg'),
        Music(title: 'Track 4', duration: '03:03', number: 4, artist: 'Artista 1', albumCover: 'assets/a7x_album_cover.jpg'),
      ],
    ),
    Album(
      title: 'Title 2',
      artist: 'Artista 2',
      release: 2015,
      cover: 'assets/powerwolf_album_cover.jpg',
      musics: <Music>[
        Music(title: 'Track 1', duration: '03:03', number: 1, artist: 'Artista 2', albumCover: 'assets/powerwolf_album_cover.jpg'),
        Music(title: 'Track 2', duration: '03:03', number: 2, artist: 'Artista 2', albumCover: 'assets/powerwolf_album_cover.jpg'),
        Music(title: 'Track 3', duration: '03:03', number: 3, artist: 'Artista 2', albumCover: 'assets/powerwolf_album_cover.jpg'),
        Music(title: 'Track 4', duration: '03:03', number: 4, artist: 'Artista 2', albumCover: 'assets/powerwolf_album_cover.jpg'),
      ],
    ),
    Album(
      title: 'Title 3',
      artist: 'Artista 3',
      release: 2015,
      cover: 'assets/siames_album_cover.jpg',
      musics: <Music>[
        Music(title: 'Track 1', duration: '03:03', number: 1, artist: 'Artista 3', albumCover: 'assets/siames_album_cover.jpg'),
        Music(title: 'Track 2', duration: '03:03', number: 2, artist: 'Artista 3', albumCover: 'assets/siames_album_cover.jpg'),
        Music(title: 'Track 3', duration: '03:03', number: 3, artist: 'Artista 3', albumCover: 'assets/siames_album_cover.jpg'),
        Music(title: 'Track 4', duration: '03:03', number: 4, artist: 'Artista 3', albumCover: 'assets/siames_album_cover.jpg'),
      ],
    ),
  ];
}
