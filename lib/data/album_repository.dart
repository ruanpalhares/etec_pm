import 'package:aula_0108/domain/album.dart';
import 'package:aula_0108/domain/music.dart';

List<Album> loadAlbums() {
  return <Album>[
    Album(
      title: 'Title 1',
      artist: 'Artist',
      release: 2015,
      cover: 'assets/logo.png',
      musics: <Music>[
        Music(title: 'Track 1', duration: '03:03', number: 1),
        Music(title: 'Track 2', duration: '03:03', number: 2),
        Music(title: 'Track 2', duration: '03:03', number: 3),
        Music(title: 'Track 2', duration: '03:03', number: 4),
      ],
    ),
    Album(
      title: 'Title 2',
      artist: 'Artist',
      release: 2015,
      cover: 'assets/logo.png',
      musics: <Music>[
        Music(title: 'Track 1', duration: '03:03', number: 1),
        Music(title: 'Track 2', duration: '03:03', number: 2),
        Music(title: 'Track 2', duration: '03:03', number: 3),
        Music(title: 'Track 2', duration: '03:03', number: 4),
      ],
    ),
    Album(
      title: 'Title 3',
      artist: 'Artist',
      release: 2015,
      cover: 'assets/logo.png',
      musics: <Music>[
        Music(title: 'Track 1', duration: '03:03', number: 1),
        Music(title: 'Track 2', duration: '03:03', number: 2),
        Music(title: 'Track 2', duration: '03:03', number: 3),
        Music(title: 'Track 2', duration: '03:03', number: 4),
      ],
    ),
  ];
}
