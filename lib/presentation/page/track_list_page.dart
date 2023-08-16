import 'package:aula_0108/domain/album.dart';
import 'package:aula_0108/presentation/widget/display_music.dart';
import 'package:flutter/material.dart';

class TrackListPage extends StatelessWidget {
  const TrackListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final album = ModalRoute.of(context)?.settings.arguments as Album;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                album.title,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  shadows: [
                  const Shadow(
                    color: Colors.white,
                    blurRadius: 4,
                  )
                ]),
              ),
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              background: Image.asset(
                album.cover,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
            (context, index) => album.musics.length > index ? 
            DisplayMusic(music: album.musics[index]) : null
          ))
        ],
      ),
    );
  }
}
