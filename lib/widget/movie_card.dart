import 'package:flutter/material.dart';
import 'package:mvvm_example/viewModel/movie_view_model.dart';

class MovieList extends StatelessWidget {
  final List<MovieViewModel> movies;

  const MovieList({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];

        return ListTile(
          contentPadding: const EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(movie.poster), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(6),
            ),
            width: 50,
            height: 100,
          ),
          title: Text(movie.title),
        );
      },
    );
  }
}
