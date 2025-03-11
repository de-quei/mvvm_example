import 'package:flutter/material.dart';
import 'package:mvvm_example/service/movie_service.dart';
import 'package:mvvm_example/viewModel/movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = [];

  Future<void> fetchMovies(String keyword) async {
    final results = await MovieService().fetchMovies(keyword);
    movies = results.map((item) => MovieViewModel(movie: item)).toList();
    print(movies);
    notifyListeners();
  }
}
