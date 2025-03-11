import 'package:flutter/material.dart';
import 'package:mvvm_example/page/movie_list_page.dart';
import 'package:mvvm_example/viewModel/movie_list_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movies",
      home: ChangeNotifierProvider(
        create: (context) => MovieListViewModel(),
        child: const MovieListPage(),
      ),
    );
  }
}
